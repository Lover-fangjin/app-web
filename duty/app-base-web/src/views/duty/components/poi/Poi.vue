<template>
    <div></div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import { drawEntityPoi, removeEntityByType } from '@/util/common3d';
    import { isEmptyArray } from '@/util/tools';
    import { unHighlight, highlight, creatHtmlElement } from './poi.js'

    export default {
        computed: {
            ...mapGetters([
                'currentArea'    
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
                popwindow: null,
                selected: '',
                users: []
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
                        me.selected = entity.name;
                        highlight(_viewer, entity.name);
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
                        lng: item.lon === null ? 0 : item.lon,
                        lat: item.lat === null ? 0 : item.lat,
                        height:0,
                        imgs: me.info.imgs,
                        type:  me.info.type,
                        group: me.info.group
                    }
                    params.push(param)
                })
                drawEntityPoi(me.$root.viewer, params);
                me.initHandler();
            },
            companyList(_params) {
                let me = this;
                me.loading = true
                me.info.list = [];
                me.$api.getCompanyList(_params).then(res =>{
                    me.loading = false
                    if(res.resultCode === 200){
                        me.total = res.result.total;
                        me.info.list = res.result.list.map(item => {
                            let _item = {
                                id: item.id,
                                name: item.company_name,
                                lat: item.lat,
                                lon: item.lon
                            }
                            return _item;
                        });
                        me.initPois();
                    }
                });
            }
        },
        watch: {
            selected(value) {
                let me = this;
                if(me.selected === 'none') { return; }
                me.selected = 'none';
                let _list = me.info.list.filter(p => { return p.name === value});
                if(isEmptyArray(_list)) { return; }
                let _info = _list[0]
                if(me.info.type === "company_poi"){
                    me.$store.commit('updateVipId', _info.id)
                } else if(me.info.type === "street_poi"){
                    let obj = Object.assign({}, _info);
                    obj.name = obj.name.split('(')[0];
                    me.$store.commit('updateCurrentArea', obj);
                } else if(me.info.type === "district_poi"){
                    let obj = Object.assign({}, _info);
                    obj.name = obj.name.split('(')[0];
                    me.$store.commit('updateCurrentArea', obj);
                }
            },
            'currentArea' (area) {
                let me = this, _viewer = me.$root.viewer;
                if( area.type === '2' && me.info.type === 'street_poi' ){
                    me.info.list = [];
                    removeEntityByType(_viewer, 'street_poi', () => { 
                        me.info.list = area.children.map(item => {
                            let _item = Object.assign({}, item);
                            _item.name = _item.name + '(' + _item.count + '家)';
                            return _item;
                        });
                        me.initPois();
                    });
                } else if( area.type === '3' && me.info.type === 'company_poi' ){
                    removeEntityByType(_viewer, 'company_poi', () => { 
                        let params = {
                            pageNum: 1, 
                            pageSize: 999,
                            type:area.type,
                            key:area.name
                        }
                        me.companyList(params)
                    });
                    
                }
            }
        },
        destroyed () {
        },
    }
</script>


<style lang="scss">
    @import "../../../../assets/style/ztman.scss";
    #popwind{
        background-color: rgba(21,44,76,1);
        z-index: 0 !important;
        user-select: none; /*禁止选中*/
        // height: 180px;
        width: 260px;
        // pointer-events: none; /*鼠标穿透*/

        ul{
            width: calc(100% - 70px);
            text-align: left;
            margin-left: 70px;
            // padding-top:5px;
            // border-bottom: 1px solid #fff;
        }
        li{ 
            font-size: 12px !important;
            color: #fff;
        }
    }
   .zt-popwin-arrow{
        background-color: rgba(21,44,76,1);
        z-index: 0 !important;
    }
    #siteInfo{
        width: 100%;
        height: 100%;
        background-color: rgba(21,44,76,1);
        // padding: 10px;
    }
    #peopleInfo {
        // padding-bottom: 15px;
        width: 100%;
        height: 100%;
        margin-top: 0 !important;

        img{
            width: 60px;
            height: 80px;
            float: left;
        }
        .watch {
            text-align: right;
            margin-top: 15px;
            width: 94%;
            span {
                color:$duty-color;
                cursor: pointer;
                font-size: 14px;
            }
            span:hover {
                color:blue;
            }
        }
        .title{
            text-align: center;
            margin-top: -15px;
            // color: #000;
        }
    }
    .zt-popwin-close{
        top: 10px !important;
    }
    .zt-popwin-close:after{
        background: #fff;
    }
    .zt-popwin-close:before {
        background: #fff;
    }
</style>