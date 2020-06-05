<template>
    <div>
        <div id="alertInfo" ref="alertInfo">
            <div class="zt-popwin-arrow"></div>
            <div class="content" v-if="alertInfo !== null">
                <p style="line-height: 10px;">{{alertInfo.report_time.split('.')[0].replace('T', ' ')}}</p>
                <hr style="margin: 10px -10px;">
                <ul>
                    <li class="left">事件来源：</li>
                    <li  class="right">{{alertInfo.problem_resource}}</li>
                </ul>
                <ul>
                    <li class="left">事件等级：</li>
                    <li  class="right">{{alertInfo.problem_level}}</li>
                </ul>
                <ul>
                    <li class="left">问题类型：</li>
                    <li  class="right">{{alertInfo.event_type}}</li>
                </ul>
                <ul>
                    <li class="left">事件地点：</li>
                    <li  class="right">{{alertInfo.location}}</li>
                </ul>
                <ul>
                    <li class="left">事件描述：</li>
                    <li  class="right"><p>{{alertInfo.description.length > 100 ? alertInfo.description.substring(0,100) : alertInfo.description}}</p></li>
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
                'eventList'    
            ])
        },
        props: {
            info:{
                type: Object,
                default:() => { return {} }
            },
        },
        data() {
            return {
                handler: null,
                users: [],
                people: {},
                alertInfo: null
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
                        highlight(_viewer, entity.id);
                        me.onSelected(entity.id);
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
                    let dotId = item.hasOwnProperty('id') && item.id !== null ? item.id : me.guid.newGUID();
                    let param = {
                        id: dotId,
                        name: item.name,
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
            updatePoiPosition(_data){
                let me = this, _viewer = this.$root.viewer;
                let entities = _viewer.entities;
                me.info.list = _data;
                _data.map(info => {
                    let _entity = entities.getById(info.id)
                    if(!_entity) { 
                        console.log('创建新的poi：', info)
                        let dotId = info.hasOwnProperty('id') && info.id !== null ? info.id : me.guid.newGUID();
                        let param = {
                            id: dotId,
                            name: info.name,
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
            },
            updateEventList(_data) {
                let me = this;
                let _viewer = this.$root.viewer;
                removeEntityByType(_viewer, me.info.type, () => {
                    me.info.list = _data;
                    me.initPois()
                });
                console.log('update Event List !')
            },
            onSelected(id){
                let me = this;
                let _viewer =me.$root.viewer;
                // 处理poi单击选中 
                let _list = me.info.list.filter(p => { return p.id == id});
                if(isEmptyArray(_list)) { return; }
                let _event = _list[0]


                me.$api.getEventInfoById({eventId: id}).then(res => {
                    console.log('警情信息: ', res.result);
                    me.alertInfo = res.result;

                    setTimeout(() => {
                        let _win = {
                            id: 'alertInfo',
                            position: [parseFloat(_event.lon), parseFloat(_event.lat)],
                            element: me.$refs.alertInfo.outerHTML,
                            offset: [-me.$refs.alertInfo.offsetWidth / 2, -me.$refs.alertInfo.offsetHeight - 30]
                        }

                        if(me.$root.popwindow === null){
                            me.$root.popwindow = new Css3Renderer(_viewer, [_win], true);
                        } else {
                            me.$root.popwindow.remove('alertInfo');
                            me.$root.popwindow.append(_win)
                        }

                        $('#alertInfo .zt-popwin-close').bind("click", () => {
                            $('#alertInfo .zt-popwin-close').unbind("click");
                            unHighlight(_viewer);
                            me.$root.popwindow.remove('alertInfo');
                        });
                    }, 200)
                });
            }
        },
        destroyed () {
            let me = this, _viewer = this.$root.viewer;
            if(me.$root.popwindow !== null){
                me.$root.popwindow.remove('peopleInfo');
            }
            removeEntityByType(_viewer, me.info.type);
        },
    }
</script>


<style lang="scss">
    @import "@/assets/style/index.scss";

    #alertInfo{
        width: 300px;
        height: auto;
        position: fixed;
        z-index: 0;

        ul{
            width: 100%;
            text-align: left;
            margin-top: 7px;

            .left {
                width:70px; color: #05e2d4
            }
            .right {
                width:200px;
            }
        }
        li { 
            font-size: 12px !important;
            color: #fff;
            display: table-cell;
            line-height: 20px;
        }
        .content {
            z-index: 2;
            padding: 10px;
            border: 1px solid #556fa5;
            background-color: rgba(21,44,76,1);
            position: sticky;
            min-height: 100px;
        }
        .right-detail {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 5;
            overflow: hidden;
        }
    }

</style>