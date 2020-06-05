<template>
    <div class="headers">
        <div id="timeContainer">
            <span style="float:left;font-size:25px;">{{dateTime.time}}</span>
            <span id="clock">
                <span id="date" style="font-size:14px;">{{dateTime.date}}</span>
            </span>
        </div>
        <div class="leftUl" ><weatherLevitate style="font-size:25px;"/></div>
        <div class="header-title">
            <!-- <div>北臧村镇辅政通大数据平台</div> -->
        </div>
        <div class="rightUl"></div>   
        <router-link to="/ncov/china">
            <el-button class="outbreak-topic" @click="outbreakClick">疫情专题</el-button>
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
    height: 80px;
    background: $duty-bg;
    color: white;
    position: absolute;
    z-index: 9;
    left:0;
    display: flex;
    top:0;
    .leftUl{
        width: 300px;
        padding-left: 50px;
        z-index: 9;
    }
    .rightUl{
        width: 350px;
        
    }
    .header-title{
        flex:1;
        height: 100%;
        line-height: 70px;  
        font-size: 25px;
        color: #fff;
        font-weight: bold;
        text-overflow: ellipsis;
        letter-spacing: 5px;
        // cursor: pointer;
        // background:u;
        background: url('../../assets/headerbg.png') no-repeat center center;
        background-size: 600px 75px;
        div{
            width: 744px;
            margin: 0 auto;
        }
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
