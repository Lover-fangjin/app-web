<template>
    <div>
         <div id="peopleInfo" ref="peopleInfo">
            <div class="zt-popwin-arrow"></div>
            <div class="content">
                <img src='static/images/baoan_s.png' />
                <ul>
                    <li style="width:70px;">&nbsp;&nbsp;&nbsp;值勤人：</li>
                    <li style="width:120px;">{{peopleInfo.truename}}</li>
                </ul>
                <ul>
                    <li style="width:70px;">联系电话：</li>
                    <li style="width:120px;">{{peopleInfo.mobile}}</li>
                </ul>
                <ul>
                    <li style="width:70px;">所属队伍：</li> 
                    <li style="width:120px;">{{peopleInfo.dept_name}}</li>
                </ul>
            </div>
            <div class="zt-popwin-close"> <i class="el-icon-close"></i> </div>
        </div>
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import { drawEntityPoi, drawEntityPoiSingle, removeEntityByType, Css3Renderer } from '@/util/common3d';
    import { isEmptyArray } from '@/util/tools';
    import { unHighlight, highlight, creatHtmlElement } from './poi.js'

    export default {
        computed: {
            ...mapGetters([
                'peopleList'    
            ])
        },
        data() {
            return {
                handler: null,
                users: [],
                people: {},
                peopleInfo: {
                    truename: '',
                    mobile: '',
                    dept_name: '',
                },
                info:{
                    type: 'people_poi',
                    group: 'people_group',
                    list: [],
                    imgs: {
                        defaultImg: 'static/images/pois/people_d.png',
                        activeImg: 'static/images/pois/people_s.png',
                    }
                }
            }
        },
        mounted () {
            let me = this;
            me.$nextTick(() => {
                me.initPois();
            });
        },
        methods: {
            initHandler() {
                let me = this;
                let _viewer = this.$root.viewer;
                me.handler = me.handler !==null ? me.handler : new Cesium.ScreenSpaceEventHandler(_viewer.scene.canvas);
                me.handler.setInputAction(function onMouseClick(movement) {
                    let pickedFeature = _viewer.scene.pick(movement.position);
                    unHighlight(_viewer);
                    if (!Cesium.defined(pickedFeature)) {
                        return;
                    }
                    let entity = pickedFeature.id;
                    if(Cesium.defined(entity) && entity.hasOwnProperty('type') && entity.type === me.info.type){
                        me.onSelected(entity.id) 
                        highlight(_viewer, entity.id);
                    }
                }, Cesium.ScreenSpaceEventType.LEFT_CLICK);
            },
            clearHandler() {
                let me = this;
                if(me.handler !== undefined && me.handler !== null){
                    me.handler.removeInputAction(Cesium.ScreenSpaceEventType.LEFT_CLICK);
                }
            },
            initPois() {
                let me = this, params = [];

                me.info.list.map(item => {
                    let dotId = item.hasOwnProperty('truename') && item.truename !== null ? item.truename : me.guid.newGUID();
                    let param = {
                        id: dotId,
                        name: item.truename,
                        lng: item.lon == null || item.lon == '' ? 0 : parseFloat(item.lon),
                        lat: item.lat == null || item.lon == '' ? 0 : parseFloat(item.lat),
                        height:0,
                        imgs: me.info.imgs,
                        type:  me.info.type,
                        group: me.info.group,
                        pShow: item.status === "待派遣" ? true : false
                    }
                    params.push(param)
                })
                drawEntityPoi(me.$root.viewer, params);
                me.initHandler();
            },
            isContained(a, b) {
                if(!(a instanceof Array) || !(b instanceof Array)) return false;
                if(a.length != b.length) return false;
                for(var i = 0, len = b.length; i < len; i++){
                    let _keys = Object.keys(a[i]);
                    let _status = true;
                    _keys.map(key => {
                        if( a[i][key] != b[i][key] ){ 
                            _status = false;
                            return;
                        }
                    });
                    if (!_status) { 
                        return false;
                    }
                }
                return true;
            },
            updatePeoplePosition(_data){
                let me = this, _viewer = this.$root.viewer;
                 let entities = _viewer.entities;
                console.log('更新人员位置')

                let _contained = me.isContained(me.info.list, _data);
                if(!_contained) {
                    me.info.list = _data;
                    _data.map(info => {
                        let _entity = entities.getById(info.truename)
                        if(_entity) { 
                            var position = new  Cesium.Cartesian3();
                            position = Cesium.Cartesian3.fromDegrees(parseFloat(info.lon), parseFloat(info.lat), 0);//(经度，纬度，高程)
                            _entity.position = position;
                        } else {
                            console.log('创建新的poi：', info)
                            let dotId = info.hasOwnProperty('truename') && info.truename !== null ? info.truename : me.guid.newGUID();
                            let param = {
                                id: dotId,
                                name: info.truename,
                                lng: info.lon == null || info.lon == '' ? 0 : parseFloat(info.lon),
                                lat: info.lat == null || info.lon == '' ? 0 : parseFloat(info.lat),
                                height:0,
                                imgs: me.info.imgs,
                                type:  me.info.type,
                                group: me.info.group,
                                pShow: info.status === "待派遣" ? true : false
                            }
                            drawEntityPoiSingle(_viewer, param)
                        }
                    })
                }

            },
            updatePeopleList(value){
                let me = this,  _viewer = this.$root.viewer;
                let _contained = me.isContained(me.info.list, value);
                if(!_contained) {
                    removeEntityByType(_viewer, me.info.type, () => {
                        console.log(">>---------------->< update people poi >", value)
                        me.info.list = value;
                        me.initPois();
                    });
                }
            },
            onSelected (id) {
                let me = this;
                let _viewer =me.$root.viewer;
                // 处理poi单击选中 
                let _list = me.info.list.filter(p => { return p.truename == id});
                if(isEmptyArray(_list)) { return; }
                let _info = _list[0]

                me.peopleInfo = _info
                setTimeout(() => {
                    let _win = {
                        id: 'peopleInfo',
                        position: [parseFloat(_info.lon), parseFloat(_info.lat)],
                        element: me.$refs.peopleInfo.outerHTML,
                        offset: [-me.$refs.peopleInfo.offsetWidth / 2, -me.$refs.peopleInfo.offsetHeight - 30]
                    }

                    if(me.$root.popwindow === null){
                        me.$root.popwindow = new Css3Renderer(_viewer, [_win], true);
                    } else {
                        me.$root.popwindow.remove('peopleInfo');
                        me.$root.popwindow.append(_win)
                    }

                    $('#peopleInfo .zt-popwin-close').bind("click", () => {
                        $('#peopleInfo .zt-popwin-close').unbind("click");
                        unHighlight(_viewer);
                        me.$root.popwindow.remove('peopleInfo');
                    });
                }, 200)
            },
        },
        destroyed () {
            let me = this;
            if(me.$root.popwindow !== null){
                me.$root.popwindow.remove('peopleInfo');
            }
        },
    }
</script>


<style lang="scss">
    @import "@/assets/style/index.scss";
   #peopleInfo{
        width: 300px;
        height: auto;
        position: fixed;
        z-index: 0;

        img{
            width: 60px;
            height: 80px;
            float: left;
        }
        ul{
            width: calc(100% - 78px);
            text-align: left;
            margin-left: 80px;
            margin-top: 7px;
        }
        li{ 
            font-size: 12px !important;
            color: #fff;
            display: table-cell;
            line-height: 20px;
        }
        .content{
            z-index: 2;
            padding: 10px;
            border: 1px solid #556fa5;
            background-color: rgba(21,44,76,1);
            position: sticky;
            min-height: 100px;
        }
    }


</style>