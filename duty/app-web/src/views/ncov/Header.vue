<template>
    <div class="headers">
        <div id="timeContainer">
            <span id="date">{{dateTime.date}} 星期{{dateTime.day}}</span>
            <span id="clock">
                <span style="float:left">{{dateTime.time}}</span>
            </span>
        </div>
        <div class="leftUl"><weatherLevitate /></div>
        <h2 class="header-title">全国新型冠状病毒大数据平台</h2>
        <div class="rightUl"></div>   
        <router-link to="/duty">
            <el-button class="outbreak-topic" @click="outbreakClick">辅政通</el-button>
        </router-link>   
    </div>
</template>

<script>
import screenfull from 'screenfull';
import { mapGetters } from 'vuex';
import moment from "moment";
import weatherLevitate from "@/components/weather/weatherLevitate";
export default {
    computed: {
        ...mapGetters([
            'currHeadId'    
        ])
    },
    components: {
        weatherLevitate
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
            dayMap: ["日", "一", "二", "三", "四", "五", "六"]
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

    },
    methods: {
        triggerEvent(id, _t = 'none'){
            let me = this;
            let mid = id === me.currHeadId ? 'none' : id;
            me.globalEvent.trigger({type: me.menuChange, param:{type: _t}});
            this.$store.commit('updateCurrHeadId', mid);
        },

        fullScreen(){
            screenfull.request()
        },
        
        enableFullscreen(enable) {
            this.isFullscreen = enable;
            if (enable) {
                this.globalEvent.trigger({type: 'FULLSCREEN', param:{}});
            } else {
                Cesium.Fullscreen.fullscreen && Cesium.Fullscreen.exitFullscreen();
            }
        },

        logout(){ // 退出登录
            
            let me = this;
            me.$api.logouts().then(res =>{
                if(res.code === ''){
                    me.$message({message: '退出成功',type:'success', duration:config.duration})
                    me.$router.push('/login')
                }
            }).catch(err => {
                me.$message({message: err, type: 'error', duration:config.duration})
            })
            
        },
        outbreakClick(){

        }

    },
    created () {
    },
  }
</script>

<style lang="scss" scoped>
@import "../../assets/style/ztman.scss";
 .headers{
    width:100%;
    height: 70px;
    background: $duty-bg;
    color: white;
    position: absolute;
    z-index: 2;
    left:0;
    display: flex;
    top:0;
    .leftUl{
        width: 300px;
        padding-left: 50px;
    }
    .rightUl{
        width: 350px;
        
    }
    .header-title{
        flex:1;
        height: 70px;
        line-height: 70px;  
        font-size: 22px;
        color: #fff;
        font-weight: bold;
        text-overflow: ellipsis;
        letter-spacing: 5px;
        cursor: pointer;
    }
    #timeContainer {
        position: absolute;
        left: 0px;
        text-align: center;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 150px;
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
    // 疫情专题按钮
    .outbreak-topic{
        margin: 20px 20px 0 0;
        padding: 0;
        background: $duty-bg;
        border: 1px solid $duty-border;
        outline: none;
        text-align: center;
        color: #fff;
        padding: 0px 18px;
        height: 30px;
    }

 }
</style>
