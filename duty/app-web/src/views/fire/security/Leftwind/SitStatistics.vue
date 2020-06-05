<template>
<div class="site_wrap">
  <Panel :title="title" class="site_wrap">
    <!-- <p class="statistics-title">项目信息</p> -->
    <div class="block-group" slot="content">
        <div style="margin: 40% 20%; font-size: 18px; color: #ccc;" v-if="features.length === 0">
            未查到项目站点数据...
        </div>
        <div class="statistics-list" v-if="features.length > 0">
            <ul v-for="item in features" :key="item.id" @mouseover="onMouseOver(item.site_name)" @mouseleave="onMouseLeave()">
                <!-- <i class="el-icon-map-location location" style="font-size: 18px; color: #ffffff;"></i> -->
                <i class="el-icon-position project" style="font-size: 18px; color: #ffffff;"></i>
                <li>
                    <!-- <span>项&nbsp;&nbsp;&nbsp;目：</span> -->
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

                <li v-if="selectedPro === item.site_name" style="margin: 0px">
                    <div style="width: 100%;">
                        <SiteList :features="item.sites" />
                    </div>
                </li>
            </ul>
        </div>
    </div>
  </Panel>
</div>
</template>

<script>
import { mapGetters } from 'vuex';
import { highlight, unHighlight } from '../../components/poi/poi.js';
import { lookAndFlyEntityOfName, getParentEnitty } from '@/util/common3d';
import { isEmptyArray } from '@/util/tools.js';
import SiteList from './SiteList.vue';
import Panel from '../../components/Panel';

export default {
  components: {
    SiteList,
    Panel
  },
  data () {
    return {
        features: [],
        selected: 'none',
        selectedPro: 'none',
        title:'会员信息统计'
    };
  },
  
  mounted () {
    let me = this;
    me.$nextTick(() => {
        me.features = me.$root.siteInfos
        me.selectedPro = isEmptyArray(me.features) ? 'none' : me.features[0].site_name;
    });
  },
  methods: {
    location(_name){
        lookAndFlyEntityOfName(_name);
    },
    onMouseOver(_name){
        let me = this;
        if(me.selected === _name) { return; }
        me.selected = _name;
        highlight( _name );
    },
    onMouseLeave(){
        this.selected = 'none',
        unHighlight()
    },
    siteListVisible(_name){
        this.selectedPro = this.selectedPro === _name ? 'none' : _name;
    },
    openWatchInfo(_name){
        console.log(_name)
        this.$store.commit('updateWacthInfo', [{project: _name}]);
    }
  },
  destroyed () {
    unHighlight();
  },
  watch: {
    '$root.siteInfos'(value) {
        this.features = value;
        this.selectedPro = isEmptyArray(this.features) ? 'none' : this.features[0].site_name;
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
