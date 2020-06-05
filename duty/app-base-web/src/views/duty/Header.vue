<template>
    <div class="headers">
        <div class="leftUl" >
           <div style="width:200px;">
                <div id="timeContainer">
                    <span id="clock">
                        <span style="float:left">{{dateTime.time}}</span>
                    </span>
                    <span id="date">{{dateTime.date}} 星期{{dateTime.day}}</span>
                </div>
            </div>

            <div style="padding-left: 150px; padding-top: 25px;">
                <el-autocomplete
                    v-model="state"
                    size="mini"
                    clearable
                    placeholder="请输入内容"
                    :fetch-suggestions="querySearchAsync"
                    @clear="onClear"
                    popper-class="select-option"
                    :select-when-unmatched='true'
                    @select="handleSelect" >
                    <el-button class="search-btn" slot="append" style="background:transparent;" icon="el-icon-search" @click="handleIconClick"></el-button>
                </el-autocomplete>
            </div>
        </div>
        <div class="header-title">
            <!-- <div>北臧村镇辅政通大数据平台</div> -->
        </div>
        <div class="rightUl">
            <div style="width:200px; float: right;">
                <weatherLevitate style="font-size:25px;"/>
            </div>
        </div>
    </div>
</template>

<script>
import screenfull from 'screenfull';
import { mapGetters } from 'vuex';
import moment from "moment";
import weatherLevitate from "@/components/weather/weatherLevitate";
import { isEmptyObject } from '@/util/tools';
export default {
    computed: {
        ...mapGetters([
            'currHeadId','search','windShow'
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
            timer: null,
            dayMap: ["日", "一", "二", "三", "四", "五", "六"],
            restaurants: [],
            state: '',
            timeout:  null,
            searchKey:'',
            searchValue:''
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
        querySearchAsync(queryString, cb) {
            let me =this;
            let params ={
                ckey:queryString
            }
            me.$api.getAssociKey(params).then(res =>{
                if(res.resultCode === 200){
                    me.restaurants =res.result;
                    me.restaurants.map((item)=>{
                        let obj={
                            value:item.property_val,
                            key:item.property
                        }
                        me.restaurants.push(obj)
                    })
                    cb( me.restaurants);
                }
            });
            
        },
        createStateFilter(queryString) {
            return (state) => {
                return (state.value.toLowerCase().indexOf(queryString.toLowerCase()) !== -1);
            };
        },
        handleSelect(item) {
            let me = this;
            me.$store.commit('updateSearch',  {
                key: item.key,
                value: item.value
            });
            me.$store.commit('updateWindShow', false)
            setTimeout(()=>{
                if(me.$route.path !== '/search'){
                    me.$router.push('/search');
                }
            },600)
        },
        onClear(){
            let me = this;
            if(me.$route.path != '/index'){
                me.$router.push('/index');
            }
            me.$store.commit('updateWindShow', true)
        },
        handleIconClick(){
            let me = this;
            $('.el-popper')[0].style.display='none';
            me.$store.commit('updateSearch',  {
                key: '',
                value: me.state
            });
            me.$store.commit('updateWindShow', false)
            setTimeout(()=>{
                if(me.$route.path !== '/search'){
                    me.$router.push('/search');
                }
            },600)
        },

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
    },
    destroyed () {
        clearTimeout(this.timer);
    },
    watch: {
        'search'(newValue) {
            let me = this;
            if(isEmptyObject(newValue)) {
                me.state = '';
            }
        }
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
    position: relative;
    z-index: 9;
    left:0;
    display: flex;
    top:0;
    .leftUl{
        // width: 300px;
        // padding-left: 50px;
        z-index: 9;
        text-align: left;
        flex: 1;
    }

    .header-title{
        flex:1;
        height: 100%;
        line-height: 70px;  
        font-size: 25px;
        color: #fff;
        left:80;
        font-weight: bold;
        text-overflow: ellipsis;
        letter-spacing: 5px;
        // cursor: pointer;
        // background:u;
        background: url('../../assets/mid_title.png') no-repeat center center;
        background-size:578px 84px;
    }
    .rightUl{
        flex: 1;
    }
    #timeContainer {
        // position: absolute;
        // left: 0px;
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
<style lang="scss">
@import "../../assets/style/ztman.scss";
.headers{
     .el-input-group__append{
        background: $duty-bg !important;
        border: none !important;
    }
    .el-input__inner{
        background: $duty-bg !important;
        margin-left: 4px;
        border: none !important;
        color:#fff !important;

    }
    .el-autocomplete:after{
        position: absolute;
        width: 1px;
        height: 15px;
        background: rgba(255,255,255,0.5);
        top: 6px;
        right: 50px;
        content: '';
    }
    .search-btn{
        background: transparent !important;
        border: none !important;

    }
    .el-autocomplete{
        border:1px solid rgba(255,255,255,0.5) !important;
        border-radius: 5px;
        position: relative !important;
        width: 250px;
    }
    .select-option{
        background: $duty-bg !important;
    }
    .el-scrollbar{
        background: red !important;
    }
    .el-icon-search{
        color: #fff;
    }
}
 
</style>
