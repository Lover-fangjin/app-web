<template>
    <div class="headers">
        <div class="leftUl" >
            <div id="timeContainer">
                <span id="clock">
                    <span style="float:left">{{dateTime.time}}</span>
                </span>
                <span id="date">{{dateTime.date}} 星期{{dateTime.day}}</span>
            </div>

            <weatherLevitate style="font-size:25px; float: left;"/>
        </div>
        <div class="header-title">
            <div>{{$project.title}}</div>
        </div>
        <div class="rightUl">
            <el-button @click="location" class="outbreak-topic">{{btnName}}</el-button>
            <router-link to="/login">
                <div class="logout">
                    <img src="static/images/logout.png" style=""/>
                    <p>退出系统</p>
                </div>
            </router-link>

        </div>  

        <!-- <search id="search"/> -->
    </div>
</template>

<script>
import screenfull from 'screenfull';
import moment from "moment";
import weatherLevitate from "./weather/weatherLevitate";
import Search from './search/AMapSearch.vue'
export default {
    components: {
        weatherLevitate,
        // Search
    },
    props: {
        btnName: {
            type: String,
            default: "子组件方法"
        }
    },
    data() {
        return {
            menuChange:'PAGECHANGE',
            isFullscreen: false,
            dateTime: {
                date: "",
                day: "",
                time: ""
            },
            dayMap: ["日", "一", "二", "三", "四", "五", "六"],
            timer: null
        };
    },
    mounted() {
        let me = this;
        // 时间
        me.timer = setInterval(() => {
            me.dateTime.date = moment().format("YYYY/M/D");
            me.dateTime.day = this.dayMap[moment().day()];
            me.dateTime.time = moment().format("HH:mm:ss");
        }, 1000);
        
        me.$nextTick(() => {
            me.onResize();
            //根据窗口的大小变动图表
            window.addEventListener("resize", () => { me.onResize() });
        })
    },
    methods: {
        onResize(){
            let me = this;
            let title  = $('.header-title');
            title.css("left", (document.body.clientWidth - title.width()) / 2);
        },
        location(){
            alert('我是子组件的弹框')
            this.$emit('handleClick',{
                name:'房金',
                id:'1'
            })
            // window.open("https://fztsp.bjxingtaikeji.com/duty_service");
        }

    },
    destroyed () {
        clearInterval(this.timer);
    },
  }
</script>

<style lang="scss" scoped>
@import "../assets/style/index.scss";

 .headers{
    width:100%;
    height: 80px;
    // background: rgba(11, 24, 56, 0.7);
    @include background_color("header-background-color");
    color: white;
    position: absolute;
    z-index: 9;
    left:0;
    display: flex;
    top:0;

    .leftUl{
        left: 0;
        position: absolute;
        text-align: left;
        z-index: 9;
    }
    .rightUl{
        position: absolute;
        right: 0;
        text-align: right;
    }
    .header-title{
        position: absolute;
        left: calc( 50% - 289px ) !important;
        font-size: 30px;
        line-height: 80px;
        text-align: center;
        height: 80px;
        width: 578px;

        // background: url('../assets/police_mid_title.png') no-repeat center center;
    }
    #timeContainer {
        left: 0px;
        text-align: center;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 150px;
        float:left;
        padding: 10px;
    }
    #date {
        display: block;
        font-size: 14px;
        font-weight: normal;
        line-height: 22px;
        color: #fff;
    }
    #clock {
        display: block;
        letter-spacing: 3.5px;
        color: #fff;
        font-size: 1.5rem;
        line-height: 2rem;
    }

    #search {
        position: absolute;
        top: 25px;
        left: calc( 50% + 320px );
        z-index: 9;
    }

    .logout{
        height: 100%;
        text-align: center;
        cursor: pointer;
        padding: 0px 10px;
        img{
            padding-top: 15px;
            width: 24px;
            height: 24px;
        }
        p{
            padding: 10px 6px;
        }
    }
    .logout:hover{
        @include background_color("link-highlight-color");
    }
 }
</style>
