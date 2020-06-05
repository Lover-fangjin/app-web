<template>
    <div class="ncov">
      <div class="charts" ref="charts"></div>
    </div>
</template>

<script>
/**
 * 疫情统计
 * @author hejin 2020-3-4
 */
import echarts from "echarts";
import { mapGetters } from 'vuex';
import { doublePieChart } from './charts.js'

export default {
    data() {
        return {
            chart: null,
            tHealthCodeDate:[]
        }
    },
    mounted () {
        this.chart = echarts.init(this.$refs.charts);
        //根据窗口的大小变动图表
        window.addEventListener("resize", () => {
            this.chart.resize();
        });
        this.updateChart();
    },
    methods: {
        updateChart() {
            let me = this;
            // me.$api.getHealthCode().then(res =>{
            //     if(res.resultCode === 200){
            //         let osInspection = res.result.osInspection,healthCode = res.result.healthCode;
            //         let infos ={
            //             title: ['健康码数据统计表', '现场检测数据统计表'],
            //             legend:[
            //                 ['未见异常', '居家观察', '医学观察'],
            //                 ['正常', '发热']
            //             ],
            //             series:[    
            //                 [
            //                     {value: healthCode.wuyichang, name: '未见异常'},
            //                     {value: healthCode.geli, name: '居家观察'},
            //                     {value: healthCode.yisi, name: '医学观察'},
            //                 ],[
            //                     {value: parseFloat(osInspection.wuyichang), name: '正常'},
            //                     {value: parseFloat(osInspection.fashao), name: '发热'},
            //                 ]
            //             ]
            //         };
            //         doublePieChart(this.chart,infos);
            //     }
            // });
            
        }
    }
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.ncov{
    // background: #00389e47;
    height: 100%;
    width: 100%;
    background-image: url('../../../../assets/hengR.png');
    background-repeat: no-repeat;
    border: 1px solid $duty-wind-border;
}
.charts {
    width: 100%;
    height: 100%;
}
</style>