<template>
   <transition name="el-fade-in-linear">
    <div class="container" v-show='windShow'>
        <el-row class="left-up">
          <el-col :span="24" style="height: 100%"><SitStatistics /></el-col>
        </el-row>
      <el-row class="peopleSit">
        <!-- 上岗人员统计 -->
        <el-col :span="24" style="height: 100%;"> <SiteList /></el-col>
      </el-row>
    </div>
  </transition>
</template>

<script>
import SitStatistics from './SitStatistics.vue';
import SiteList from './SiteList';
import { mapState, mapGetters } from 'vuex';

export default {
  computed:{
    ...mapGetters([
        'windShow'
    ]),
  },
  components: {
    SitStatistics,SiteList
  },
  
};
</script>

<style scoped lang="scss">
@import "@/assets/style/ztman.scss";
.container {
  /* background-color: bisque; */
  width: 500px;
  position: absolute;
  top: 80px;
  bottom: 30px;
  left: 0px;
  color: white;
  height: calc(100% - 90px);
  z-index: 8;
  transition: all .8s;
}

.left-up{
  height: 42%;
  overflow: hidden;
  background: $duty-bg;
  background-image: url("../../../../assets/hengR.png");
  background-repeat: no-repeat;
}

.peopleSit{
  height: 58%; 
  width: 100%;
  color: white;
  margin-top: 10px;
  padding-top: 5px;
  background: $duty-bg;
  background-image: url("../../../../assets/hengR.png");
  background-repeat: no-repeat;
}


</style>
