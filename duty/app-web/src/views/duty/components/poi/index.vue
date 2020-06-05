<template>
    <div />
</template>

<script>
    import { drawEntityPoi, removeEntityByType } from '@/util/common3d';
    import { isEmptyArray } from '@/util/tools';
    import { unHighlight, highlight, creatHtmlElement } from './poi.js'

    export default {
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
                let viewer = config.zInst1.viewer;
                me.handler = me.handler !==null ? me.handler : new Cesium.ScreenSpaceEventHandler(viewer.scene.canvas);
                me.handler.setInputAction(function onMouseClick(movement) {
                    let pickedFeature = viewer.scene.pick(movement.position);
                    unHighlight();
                    if (!Cesium.defined(pickedFeature)) {
                        return;
                    }
                    let entity = pickedFeature.id;
                    if(Cesium.defined(entity) && entity.hasOwnProperty('type') && entity.type === me.info.type){
                        me.selected = entity.name;
                        highlight(entity.name);
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
                let me = this;
                me.info.list.map(item => {
                    let dotId = this.guid.newGUID();
                    let param = {
                        id: dotId,
                        name: item.name,
                        lng: item.lon,
                        lat: item.lat,
                        height:0,
                        imgs: me.info.imgs,
                        type:  me.info.type,
                        group: me.info.group
                    }
                    drawEntityPoi(config.zInst1.viewer, item.name, [param]);
                })
                me.initHandler();
            }
        },
        watch: {
            selected(value) {
                let me = this;
                if(me.info.type === "people_poi"){
                    let _list = me.info.list.filter(p => { return p.name === value});
                    if(isEmptyArray(_list)) { return; }
                    let people = _list[0];
                    
                    let _watch_start = people.duty_start_time === null ? '0:0' : people.duty_start_time.split(' ')[1];
                    let _watch_end = people.duty_end_time === null ? '0:0' : people.duty_end_time.split(' ')[1];
                    let content = '<div id="siteInfo" ref="siteInfo">';
                    content += `<img src='static/images/bottomIcon/baoan_s.png' />`
                    content += `<ul>
                                    <li style="width:70px;">&nbsp;&nbsp;&nbsp;值勤人：</li>
                                    <li style="width:120px;">${people.name}</li>
                                </ul>
                                <ul>
                                    <li style="width:70px;">联系电话：</li>
                                    <li style="width:120px;">${people.mobile}</li>
                                </ul>
                                <ul>
                                    <li style="width:70px;">值班时间：</li>
                                    <li style="width:120px;">${_watch_start + ' - ' + _watch_end}</li>
                                </ul>
                                </div>`
                    setTimeout(()=> {
                        if (me.popwindow) { config.zInst1.PopwindowCollection.romverAll(); };
                        var popwindowObj= new ZGLobe.Popwindow({
                            id: 'popwind',
                            show: true,
                            longitude: parseFloat(people.lon),
                            latitude: parseFloat(people.lat),
                            height: 0,
                            offset: [0, 35],
                            content: content,
                            zViewer: config.zInst1,
                            isFollow: true
                        })
                        //romverPopwindowById: ƒ, addPopwindow: ƒ, romverAll: ƒ
                        me.popwindow = config.zInst1.PopwindowCollection.addPopwindow(popwindowObj);

                        $('.zt-popwin-close').bind("click", () => {
                            unHighlight();
                            me.selected = '';
                        });
                    }, 100)
                } else if(me.info.type === "site_poi"){
                    
                }

                // if(isEmptyArray(me.features)) { return; }

                // let sites = me.features[0].sites;
                // if(isEmptyArray(sites)) { return; }

                // let data = sites.filter(item => {return item.name === me.selected})
                // if( isEmptyArray(data) ){
                //     $('.zt-popwin-close').unbind("click");
                //     $('#popwind #watch').unbind("click");
                //     return;
                // }
                // let content = '<div id="siteInfo" ref="siteInfo">'
                // content += `<p style="text-align: center; width:60%; margin: -20px auto 12px; font-size: 16px;overflow:hidden;white-space:nowrap;text-overflow: ellipsis;">
                //                 <span> ${me.selected}</span>
                //             </p>`

                // // data[0].peoples.map(item => {
                // //     content += `<ul class="poibox">
                // //                     <li style="width:50px; display: inline-block;">${item.people}</li>
                // //                     <li style="width:120px; display: inline-block;">${item.People_tel}</li>
                // //                     <li style="width:25px; display: inline-block;"><img src="${item.IS_DUTY=='1'?'static/images/duty/open.png':'static/images/duty/off.png'}" alt=""></li>
                // //                 </ul>
                // //                 `
                // // })
                // // content += '<p class="watch"><span id="watch">值班表</span></p>'
                // data.map(item => {
                //     content += `<ul class="poibox">
                //                     <li style="width:50px; display: inline-block;">${item.member_name}</li>
                //                     <li style="width:120px; display: inline-block;">${item.member_tel}</li>
                //                     <li style="width:25px; display: inline-block;"><img src="${item.isDuty=='1'?'static/images/duty/open.png':'static/images/duty/off.png'}" alt=""></li>
                //                 </ul>
                //                 `
                // })
                // content += '</div>'

                // // let filter = me.$root.siteInfos.filter(item => {return item.name === value})
                // // if( isEmptyArray(filter) ){
                // //     $('.zt-popwin-close').unbind("click");
                // //     $('#popwind #watch').unbind("click");
                // //     return;
                // // }
                // // let siteInfo = filter[0]
                // let siteInfo = data[0]
                // setTimeout(()=> {
                //     if (me.popwindow) { config.zInst1.PopwindowCollection.romverAll(); };
                //     var popwindowObj= new ZGLobe.Popwindow({
                //         id: 'popwind',
                //         show: true,
                //         longitude: parseFloat(siteInfo.lon),
                //         latitude: parseFloat(siteInfo.lat),
                //         height: 0,
                //         offset: [0, 35],
                //         content: content,
                //         zViewer: config.zInst1,
                //         isFollow: true
                //     })
                //     //romverPopwindowById: ƒ, addPopwindow: ƒ, romverAll: ƒ
                //     me.popwindow = config.zInst1.PopwindowCollection.addPopwindow(popwindowObj);

                //     $('.zt-popwin-close').bind("click", () => {
                //         unHighlight();
                //         me.selected = '';
                //     });

                //     // $('#popwind #watch').bind("click", () => {
                //     //     let data = me.features.filter(item => {return item.name === me.selected})[0]
                //     //     me.gridData = data.peoples;
                //     //     me.dialogTableVisible = true;
                //     // });
                // }, 100)
            }
        },
        destroyed () {
            removeEntityByType(config.zInst1.viewer, 'site');
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
    #siteInfo {
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