<template>
  <div class="site_wrap">
    <p class="statistics-title">项目信息</p>
    <div class="block-group">
        <div style="margin: 40% 20%; font-size: 18px; color: #ccc;" v-if="features.length === 0">
            未查到项目站点数据...
        </div>
        <div class="statistics-list" v-if="features.length > 0">
            <ul v-for="item in features" :key="item.id" @mouseover="onMouseOver(item.name)" @mouseleave="onMouseLeave()">
                <!-- <i class="el-icon-map-location location" style="font-size: 18px; color: #ffffff;"></i> -->
                <i class="el-icon-position project" style="font-size: 18px; color: #ffffff;"></i>
                <li>
                    <span>项&nbsp;&nbsp;&nbsp;目：</span>
                    <span class="site-name" @click="location(item)" >{{item.name}}</span>
                    <span class="icons">
                         <el-tooltip effect="dark" content="站点列表" placement="top-start">
                             <i :class="selectedPro === item.name ? 'el-icon-files selected-i' : 'el-icon-files'" @click="siteListVisible(item.name)"></i>
                        </el-tooltip>
                         <el-tooltip effect="dark" content="值班信息" placement="top-start">  
                            <i class="el-icon-s-order" @click="openWatchInfo(item.name)" ></i>
                        </el-tooltip>
                         <el-tooltip effect="dark" content="定位项目" placement="top-start">  
                            <i class="el-icon-map-location" @click="location(item)" ></i>
                        </el-tooltip>
                    </span>
                </li>
                <li>
                    <span>负责人：</span>
                    <span>{{item.captain}}</span>
                </li>
                <li>
                    <span>电&nbsp;&nbsp;&nbsp;话：</span>
                    <span>{{item.captain_tel}}</span>
                </li>
                <li>
                    <span>地&nbsp;&nbsp;&nbsp;址：</span>
                    <span>{{item.location}}</span>
                </li>

                <li v-if="selectedPro === item.name" style="margin: 0px">
                    <div style="width: 100%;">
                        <SiteList :features="item.sites" />
                    </div>
                </li>
            </ul>
        </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { highlight, unHighlight } from '../../components/poi/poi.js';
import { lookAndFlyEntityOfName, getParentEnitty, lookAndFlyPoint } from '@/util/common3d';
import { isEmptyArray } from '@/util/tools.js';
import SiteList from './SiteList.vue';

export default {
    computed: {
        ...mapGetters([
            'siteInfos'    
        ])
    },
  components: {
    SiteList
  },
  data () {
    return {
        features: [],
        selected: 'none',
        selectedPro: 'none',
    };
  },
  
  mounted () {
    let me = this;
    me.$nextTick(() => {
        me.features = me.siteInfos;
        me.selectedPro = isEmptyArray(me.features) ? 'none' : me.features[0].name;
    });
  },
  methods: {
    location(item){
        // lookAndFlyEntityOfName(_name);
        lookAndFlyPoint(parseFloat(item.lon), parseFloat(item.lat), 0, 12000, -90);
    },
    onMouseOver(_name){
        let me = this;
        if(me.selected === _name) { return; }
        me.selected = _name;
        highlight(_name,);
    },
    onMouseLeave(){
        this.selected = 'none';
        unHighlight()
    },
    siteListVisible(_name){
        this.selectedPro = this.selectedPro === _name ? 'none' : _name;
    },
    openWatchInfo(_name){
        console.log(_name)
        let me = this;
        let filter = me.features.filter(item => { return item.name === _name})
        if(isEmptyArray(filter)){ reutnr; }
        let sites = filter[0].sites;
        this.$store.commit('updateWacthInfo', sites);
    }
  },
  destroyed () {
    unHighlight();
  },
  watch: {
    'siteInfos'(value) {
        this.features = value;
        this.selectedPro = isEmptyArray(this.features) ? 'none' : this.features[0].name;
    }
  },
};
</script>
<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.site_wrap{
    width: 100%;
    background: $duty-bg;
    color: white;
    // padding: 10px;
    // overflow-y: auto;
    height: 100%;
    z-index: 8;
    background-image: url("../../../../assets/hengL.png");
    background-repeat: no-repeat;
    .statistics-title{
        margin-top: 10px;
        margin: 0;
        font-weight: bold;
        font-size: 16px;
        padding: 5px 0;
    }
    .statistics-list{
        text-align: left;
        ul{
            padding:10px 15px;
            position: relative;
            .project{
                position: absolute;
                top: 10px;
                left: 0;
                width: 15px;
                height: 15px;
            }
            li{
                margin: 0px 0 5px 10px;
                span{
                    font-size: 14px;
                }
                span:nth-of-type(1){
                    color: $duty-statistics-color;
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
                        padding-left: 10px;
                        cursor: pointer;
                    }
                    i:hover{
                        color: rgb(252, 225, 137) !important
                    }
                    .selected-i{
                        color: rgb(245, 147, 81) !important
                    }
                }
            }
        }
        ul:hover{
        background-color:  $duty-hover
        }
    }
    .block-group{
        width: calc(100% - 20px);
        height: calc(100% - 40px);
        overflow-y: auto;
        margin-top: 5px;
        padding: 0 10px;
    }
}

</style>
