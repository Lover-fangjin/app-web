<template>
 <transition name="el-fade-in-linear">
  <div class="container" v-show="show">
    <!-- 信用等级统计图 -->
    <el-row class="right-up">
      <el-col :span="24" style="height: 100%;"><CreditRating /></el-col>
    </el-row>
    <el-row class="statistics">
      <!-- 业务类型统计图 -->
      <el-col :span="24" style="height: 100%"><BusinessType bType='businessTypeXq' /></el-col>
    </el-row>
    <el-row class="statistics">
      <!-- 业务类型统计图 -->
      <el-col :span="24" style="height: 100%"><BusinessType /></el-col>
    </el-row>
  </div>
 </transition>
</template>
<script>
import { mapGetters } from 'vuex';
import CreditRating from '../../components/charts/CreditRating.vue';
import BusinessType from '../../components/charts/BusinessType.vue'

export default {
  computed: {
    ...mapGetters([
      'currentArea'    
    ]),
    show(){
      return this.$store.state.duty.windShow; //步骤一
    }
  },
  components: {
   BusinessType, CreditRating
  },
  data() {
    return {
      eParams:{
        type:'1',
        key:'北京市'
      },
    }
  },
  mounted () {
    this.updataChart();
  },
  methods: {
    updataChart() {
      let me = this;
      me.loading = true
      me.$api.getStatisticCharts(me.eParams).then(res =>{
        me.loading = false;
        this.$store.commit('updateStatistic', res.result);
      });
    },  
  },
  watch: {
    'currentArea'(area) {
      let me = this;
      me.eParams= {
        type:area.type,
        key:area.name
      }
      me.updataChart()
    }
  },
};
</script>
<style scoped lang="scss">
@import "@/assets/style/ztman.scss";

.container {
  // background-color: blue;
  width: 500px;
  top: 80px;
  right: 0px;
  bottom: 0px;
  color: white;
  position: absolute;
  height: calc(100% - 100px);
  z-index: 8;
  transition: all 0.8s;
}

.right-up{
  height:160px; 
  width: 100%;
  color: white;
  overflow: hidden;
  background: $duty-bg;
  background-image: url("../../../../assets/hengL.png");
  background-repeat: no-repeat;
  border: 1px solid $duty-wind-border;
}

.statistics{
  height: calc( 50% - 80px); 
  width: 100%;
  color: white;
  overflow: hidden;
  margin-top: 10px;
  background: $duty-bg;
  background-image: url("../../../../assets/hengL.png");
  background-repeat: no-repeat;
  border: 1px solid $duty-wind-border;
}
</style>
