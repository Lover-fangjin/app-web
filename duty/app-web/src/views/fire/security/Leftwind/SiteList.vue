<template>
    <div class="site-list" v-if="features.length > 0">
        <ul v-for="item in features" :key="item.id" @click="location(item.site_name)" @mouseover="onMouseOver(item.site_name)" @mouseleave="onMouseLeave()">
            <!-- <i class="el-icon-map-location location" style="font-size: 18px; color: #ffffff;"></i> -->
            <i class="el-icon-map-location project" style="font-size: 18px; color: #ffffff;"></i>
            <li>
                <span>项&nbsp;&nbsp;&nbsp;目：</span>
                <span class="site-name" @click="location(item.site_name)" >{{item.site_name}}</span>
            </li>
            <li>
                <span>负责人：</span>
                <span>{{item.member_name}}</span>
            </li>
            <li>
                <span>电&nbsp;&nbsp;&nbsp;话：</span>
                <span>{{item.member_tel}}</span>
            </li>
            <li>
                <span>地&nbsp;&nbsp;&nbsp;址：</span>
                <span>{{item.location}}</span>
            </li>
        </ul>
    </div>
</template>

<script>
import { highlight, unHighlight } from '../../components/poi/poi.js'
import { lookAndFlyEntityOfName, getParentEnitty } from '@/util/common3d';
export default {
    props: {
        features: {
            type: Array,
            default:() => { return [] }
        }
    },
    data() {
        return {
            selected: "none"
        }
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
    }
}
</script>

<style lang="scss">
@import "@/assets/style/ztman.scss";
.site-list{
    text-align: left;
    overflow-y: auto;
    max-height: 500px;
    margin-left: 10px;
    background: $duty-bg;
    cursor: pointer;
    ul{
        padding:10px 15px;
        padding-left: 25px;
        position: relative;
        .project{
            position: absolute;
            top: 10px;
            left: 10px;
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
                    padding-right: 5px;
                    cursor: pointer;
                }
                i:hover{
                    color: rgb(252, 225, 137) !important
                }
            }
        }
    }
    ul:hover{
        background-color: rgba(255, 255, 255, 0.2);
    }
}
//  .p{
//     width: 100%;
//     height: 2px;
//     position: absolute;
//     top:0;
//     background: url("../../../../assets/heng.png");
// }

</style>