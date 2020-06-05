<template>
    <div>
        <el-dialog title="值班表" :visible.sync="dialogTableVisible">
            <el-table :data="gridData">
                <el-table-column property="DUTY_DATE" label="日期" width="150"></el-table-column>
                <el-table-column property="DUTY_TIME" label="时间" width="200"></el-table-column>
                <el-table-column property="people" label="姓名" width="150"></el-table-column>
                <el-table-column property="People_tel" label="联系电话" width="200"></el-table-column>
                <el-table-column property="IS_DUTY" label="在岗状态">
                    <template slot-scope="scope">
                        <img :src="scope.row.IS_DUTY=='1'?'static/images/duty/open.png' : 'static/images/duty/off.png'" alt="">
                    </template>
                </el-table-column>
            </el-table>
        </el-dialog>
    </div>
</template>

<script>
    import { drawEntityPoi, removeEntityByType } from '@/util/common3d';
    import { isEmptyArray } from '@/util/tools';
    import { unHighlight, highlight, creatHtmlElement } from './poi.js'
    let pointImg = {
        defaultImg: 'static/images/duty/WechatIMG91.png',
        activeImg: 'static/images/duty/WechatIMG90.png',
    }

    export default {
        props: {
            features: {
                type: Array,
                default:() => { return [] }
            },
            parent:{
                type: String,
                default: 'group'
            }
        },
        data() {
            return {
                handler: null,
                popwindow: null,
                selected: '',
                tableData: [{
                        tel: '13811111111',
                        name: '王小虎',
                        status: '弄'
                    }, 
                    {
                        tel: '13811111111',
                        name: '王小虎',
                        status: '弄'
                    }
                ],
                dialogTableVisible: false,
                gridData: [],
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
                    if(Cesium.defined(entity) && entity.hasOwnProperty('type') && entity.type === 'site'){
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
                me.features.map(item => {
                    let dotId = this.guid.newGUID();
                    let param = {
                        id: dotId,
                        name: item.site_name,
                        lng: item.lon,
                        lat: item.lat,
                        imgUrl: pointImg.defaultImg,
                        height:0,
                    }
                    drawEntityPoi(config.zInst1.viewer, item.site_name, [param], 'site', me.parent);
                })
                me.initHandler();
            }
        },
        watch: {
            selected(value) {
                let me = this;
                return;
                // if(me.selected === '') { return; }

                let data = me.features.filter(item => {return item.site_name === me.selected})
                if( isEmptyArray(data) ){
                    $('.zt-popwin-close').unbind("click");
                    $('#popwind #watch').unbind("click");
                    return;
                }
                let content = '<div id="siteInfo" ref="siteInfo">'
                content += `<p style="text-align: center; width:60%; margin: -20px auto 12px; font-size: 16px;overflow:hidden;white-space:nowrap;text-overflow: ellipsis;">
                                <span> ${me.selected}</span>
                            </p>`

                data[0].peoples.map(item => {
                    content += `<ul class="poibox">
                                    <li style="width:50px; display: inline-block;">${item.people}</li>
                                    <li style="width:120px; display: inline-block;">${item.People_tel}</li>
                                    <li style="width:25px; display: inline-block;"><img src="${item.IS_DUTY=='1'?'static/images/duty/open.png':'static/images/duty/off.png'}" alt=""></li>
                                </ul>
                                `
                })
                content += '<p class="watch"><span id="watch">值班表</span></p>'
                content += '</div>'

                let filter = me.$root.siteInfos.filter(item => {return item.site_name === value})
                if( isEmptyArray(filter) ){
                    $('.zt-popwin-close').unbind("click");
                    $('#popwind #watch').unbind("click");
                    return;
                }
                let siteInfo = filter[0]
                setTimeout(()=> {
                    if (me.popwindow) { config.zInst1.PopwindowCollection.romverAll(); };
                    var popwindowObj= new ZGLobe.Popwindow({
                        id: 'popwind',
                        show: true,
                        longitude: parseFloat(siteInfo.lon),
                        latitude: parseFloat(siteInfo.lat),
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

                    $('#popwind #watch').bind("click", () => {
                        let data = me.features.filter(item => {return item.site_name === me.selected})[0]
                        me.gridData = data.peoples;
                        me.dialogTableVisible = true;
                    });
                }, 100)
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
        width: 240px;
        // pointer-events: none; /*鼠标穿透*/
    }
   .zt-popwin-arrow{
        background-color: rgba(21,44,76,1);
        z-index: 0 !important;
    }
    #siteInfo {
        padding-bottom: 5px;
        width: 100%;
        height: 100%;
        margin-top: 15px;
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
    #popwind {
        ul{
            width:100%;
            padding-top:5px;
            // border-bottom: 1px solid #fff;
        }
        li{ 
            font-size: 14px;
            padding: 5px 5px;
            display:inline;
            color: #fff;
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