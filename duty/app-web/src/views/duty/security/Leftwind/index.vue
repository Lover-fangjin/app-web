<template>
  <div class="container">
    <el-row style="height: 60%; overflow: hidden;">
      <el-col :span="24" style="height: 100%"><SitStatistics /></el-col>
    </el-row>
    <el-row class="peopleSit">
      <!-- 上岗人员统计 -->
      <el-col :span="24" style="height: 100%;"><Duty /></el-col>
    </el-row>
  </div>
</template>

<script>
import SitStatistics from './SitStatistics';
import Duty from '../../components/charts/Duty.vue'

export default {
  components: {
    SitStatistics, Duty
  },
  mounted () {
    console.log('left.....')
  }
};
</script>

<style scoped lang="scss">
@import "@/assets/style/ztman.scss";
.container {
  /* background-color: bisque; */
  width: 500px;
  position: absolute;
  top: 80px;
  bottom: 20px;
  left: 0px;
  color: white;
  height: calc(100% - 110px);
  z-index: 8;
}

.peopleSit{
  height: 40%; 
  width: 100%;
  color: white;
  overflow: hidden; 
  // overflow-y: auto;
  margin-top: 10px;
  background: $duty-bg;
}

</style>
