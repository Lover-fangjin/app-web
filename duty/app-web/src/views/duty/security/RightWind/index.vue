<template>
  <div class="container">
    <el-row style="height: 40%; overflow: hidden;">
      <el-col :span="24" style="height: 100%;"><EventStatistics /></el-col>
    </el-row>
    <el-row class="statistics">
      <!-- 涉疫类事件统计 -->
      <el-col :span="24" style="height: 100%"><Ncov /></el-col>
    </el-row>
    <el-row class="statistics">
      <!-- 应急处突类统计 -->
      <el-col :span="24" style="height: 100%"><Emergency /></el-col>
    </el-row>
  </div>
</template>
<script>
import EventStatistics from './EventStatistics.vue';
import Ncov from '../../components/charts/Ncov.vue'
import Emergency from '../../components/charts/Emergency.vue'

export default {
  components: {
    EventStatistics, Ncov, Emergency
  }
};
</script>
<style scoped lang="scss">
@import "@/assets/style/ztman.scss";

.container {
  // background-color: blue;
  width: 500px;
  top: 80px;
  right: 0px;
  bottom: 20px;
  color: white;
  position: absolute;
  height: calc(100% - 120px);
  z-index: 10;
  
}

.statistics{
  height: 30%; 
  width: 100%;
  color: white;
  overflow: hidden;
  margin-top: 10px;
  background: $duty-bg;
}
</style>
