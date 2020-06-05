<template>
  <div class="container">
    <el-row style="height: 40%; overflow: hidden;">
      <el-col :span="24" style="height: 100%;"><EventStatistics :eventlist="eventlist" /></el-col>
    </el-row>
    <el-row class="statistics">
      <!-- 涉疫类事件统计 -->
      <el-col :span="24" style="height: 100%"><Ncov /></el-col>
    </el-row>
    <el-row class="statistics">
      <!-- 应急处突类统计 -->
      <el-col :span="24" style="height: 100%"><Emergency  :eventlist="eventlist" /></el-col>
    </el-row>
  </div>
</template>
<script>
import EventStatistics from './EventStatistics';
import Ncov from '../../components/charts/Ncov.vue'
import Emergency from '../../components/charts/Emergency.vue'

export default {
  data() {
    return {
      eventlist: []
    }
  },
  components: {
    EventStatistics, Ncov, Emergency
  },
  mounted() {
    let me = this;
    let params = {
      pageNum: 1,
      pageSize: 999
    }
    me.$api.getAllEvent(params).then(res =>{
      if(res.resultCode === 200){
        me.eventlist = res.result.list;
      }
    });
    me.timer = setInterval(() => { 
      me.$api.getAllEvent(params).then(res =>{
        if(res.resultCode === 200){
          // if(me.eventlist[0].date !== res.result[0].date){
            me.eventlist = res.result.list;
          // }
        }
      })
    }, 10000);
  },
};
</script>
<style scoped lang="scss">
@import "@/assets/style/ztman.scss";

.container {
  // background-color: blue;
  width: 500px;
  top: 90px;
  right: 10px;
  bottom: 30px;
  color: white;
  position: absolute;
  height: calc(100% - 140px);
  z-index: 2;
  
}

.statistics{
  height: 30%; 
  width: 100%;
  color: white;
  overflow: hidden; 
  overflow-y: auto;
  margin-top: 10px;
  background: $duty-bg;
}
</style>
