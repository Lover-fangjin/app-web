<template>
    <div class="wraps" style="position:absolute;top:80px;left:0px;width:500px;z-index:6;background:rgba(11, 24, 56, 0.7);color:#fff;height:calc(100% - 80px)">
        <div class="site-list infinite-list-wrapper" style="overflow:auto">
            <div style="height:25px;">
                <p style="text-align:center;margin-top:15px;">查询出结果{{total}}条</p>
                <p class="el-icon-close" @click="closes" style="position:absolute;top:10px;right:10px;font-size:25px;z-index:7;"></p>
            </div>
            <div v-infinite-scroll="load" infinite-scroll-disabled="disabled">
                <ul :class="currentTab == item.id?'aa': ''" v-for="item in companyListArry" :key='item.id' @click="companyListClick(item)">
                    <img class="project" src="/static/images/icon1.png" alt="">
                    <li>
                        <span>名&nbsp;&nbsp;&nbsp;称：</span>
                        <span class="site-name">{{item.company_name}}</span>
                    </li>
                    <li>
                        <span>联系人：</span>
                        <span>{{item.contact_name}}</span>
                    </li>
                    <li>
                        <span>电&nbsp;&nbsp;&nbsp;话：</span>
                        <span>{{item.contact_mobile}}</span>
                    </li>
                    <li>
                        <span>地&nbsp;&nbsp;&nbsp;址：</span>
                        <span>{{item.manage_detail_address}}</span>
                    </li>
                    <span class="detailed-msg" @click="detailedInfo(item.id)">详细信息<i class="el-icon-arrow-right"></i></span>
                </ul>
                <p v-if="loading" style="text-align:center;margin-top:10px;">加载中...</p>
                <p v-if="noMore" style="text-align:center;margin-top:10px;">没有更多了</p>
            </div>
        </div>
    </div>
</template>
<script>
import { mapGetters } from 'vuex';
import { highlight, unHighlight } from '../components/poi/poi.js'
import { lookAndFlyEntityOfName, lookAndFlyPoint, drawEntityPoiSingle, removeEntityByType } from '@/util/common3d';
import { isEmptyObject } from '@/util/tools';
export default {
    data() {
        return {
            selected: "none",
            eParams:{ 
                pageNum: 1, 
                pageSize: 10 ,
                type:'',
                key:''
            },
            companyListArry:[],
            loading: false,
            total: '',
            detailedArray:[],
            currentTab:'',
            company: {
                type: 'company_poi',
                group: 'company_group',
                imgs: {
                    defaultImg: 'static/images/pois/company_d.png',
                    activeImg: 'static/images/pois/company_s.png',
                }
            },
            handler: null,
            queryByBusType: false
        }
    },
    watch: {
        'search'() {
            this.getQueryResult()
        },
    },
    computed: {
        
        noMore () {
            return this.companyListArry.length >= this.total

        },
        disabled () {
            return this.loading || this.noMore
        },
        ...mapGetters([
            'search', 'currentArea'
        ]),
    },
    mounted () {
        let me = this;
        let query = me.$route.query;
        if(isEmptyObject(query)){
            me.queryByBusType = false;
            me.getQueryResult();
        } else {
            me.eParams = { 
                pageNum: 1, 
                pageSize: 10 ,
                type: me.currentArea.type,
                key: me.currentArea.name,
                bnsClass: query.bnsClass,
                bnsType: query.bnsType
            };
            me.queryByBusType = true;
            this.companyList();
        }
    },
    methods: {
        getQueryResult(){
            let me = this;
            let params = Object.assign({pageNum:'0', pageSize:'10'},  me.search);
            me.$api.getQueryCompanyList(params).then(res =>{
                if(res.resultCode === 200){
                    me.companyListArry = res.result.list;
                    me.total = res.result.total
                }
            });
        },
        detailedInfo(_id){
            window.event? window.event.cancelBubble = true : e.stopPropagation();
            this.$store.commit('updateVipId', _id)
        },
        companyList() {
            let me = this;
            me.loading = true
            if(me.queryByBusType) {
                me.$api.getQueryCompanyListByBnsType(me.eParams).then(res =>{
                    me.loading = false
                    if(res.resultCode === 200){
                        me.total = res.result.total;
                        me.companyListArry = me.companyListArry.concat(res.result.list);
                    }
                })
            } else {
                me.$api.getCompanyList(me.eParams).then(res =>{
                    me.loading = false
                    if(res.resultCode === 200){
                        me.total = res.result.total;
                        me.companyListArry = me.companyListArry.concat(res.result.list);
                    }
                });
            }
        },
        companyListClick(e){
            let me = this, lon = e.lon,lat = e.lat, _viewer = this.$root.viewer;
            lookAndFlyPoint(me.$root.viewer, parseFloat(lon), parseFloat(lat), 0, 1000, -90);
            me.currentTab = e.id;

            let dotId = e.hasOwnProperty('id') && e.id !== null ? e.id : me.guid.newGUID();
            let info = {
                id: dotId,
                name: e.company_name,
                lng: e.lon === null ? 0 : e.lon,
                lat: e.lat === null ? 0 : e.lat,
                height:0,
                imgs: me.company.imgs,
                type:  me.company.type,
                group: me.company.group
            }
            removeEntityByType(_viewer, me.company.type, () => { 
                drawEntityPoiSingle(_viewer, info);
                me.handler = me.handler !==null ? me.handler : new Cesium.ScreenSpaceEventHandler(_viewer.scene.canvas);
                me.handler.setInputAction(function onMouseClick(movement) {
                    let pickedFeature = _viewer.scene.pick(movement.position);
                    unHighlight(_viewer);
                    if (!Cesium.defined(pickedFeature)) {
                        return;
                    }
                    let entity = pickedFeature.id;
                    if(Cesium.defined(entity) && entity.hasOwnProperty('type') && entity.type === me.company.type){
                        me.$store.commit('updateVipId', entity.id)
                        highlight(_viewer, entity.name);
                    }
                }, Cesium.ScreenSpaceEventType.LEFT_CLICK);
            });
        },
        load () {
            this.eParams.pageNum += 1;
            this.companyList();
        },
        closes(){
            let me =this;
            me.$store.commit('updateSearch', {});
            me.$router.push('/index');
            me.$store.commit('updateWindShow', true)
        }
    }
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.wraps{
    text-align: left;
    cursor: pointer;
    background: $duty-bg !important;
    color: white;
    .site-list{
        ul{
            padding:10px 15px;
            padding-left: 40px;
            position: relative;
            border: 1px solid transparent;
            .project{
                position: absolute;
                top: 20px;
                left: 20px;
                width: 15px;
                height: 15px;
            }
            li{
                margin: 5px 0 5px 10px;
                span{
                    font-size: 14px;
                    display: inline-block;
                    vertical-align: middle;
                }
                span:nth-of-type(1){
                    color: $duty-statistics-color;
                }
                span:nth-of-type(2){
                    width: 290px;
                    overflow: hidden;
                    text-overflow:ellipsis;
                    white-space: nowrap;
                }
                .site-name{
                    cursor: pointer;
                }
                .site-name:hover{
                    color: rgb(252, 225, 137);
                }
                .icons{
                    float:right;
                    i{
                        font-size: 18px;
                        color: #ffffff;
                        padding-right: 5px;
                        cursor: pointer;
                    }
                    i:hover{
                        color: rgb(252, 225, 137) !important;
                    }
                }
            }
            .detailed-msg{
                position: absolute;
                bottom: 15px;
                right: 20px;
                color: $duty-color;
            }
        }
        ul:hover{
            background-color: rgba(255, 255, 255, 0.1);
            border: 1px solid $duty-color;
        }
        ul:nth-last-of-type(odd){
            background-color: rgba(255, 255, 255, 0.1);
        }
        .aa{
            border:#33cbff 1px solid;
            background-color: rgba(255, 255, 255, 0.1);
        }
    }
}

.hotkey{
  position: absolute;
  top: 90px;
  right: 10px;
  z-index: 9;
}
</style>
