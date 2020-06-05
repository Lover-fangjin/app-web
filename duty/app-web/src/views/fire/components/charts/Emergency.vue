<template>
    <div class="ncov">
      <div class="charts" ref="charts"></div>
    </div>
</template>

<script>
/**
 * 突发事件统计
 * @author hejin 2020-3-4
 */
import echarts from "echarts";
import { mapGetters } from 'vuex';
import { barCharts} from './charts.js'

export default {
    props: {
        eventlist: {
            type: Array,
            default: () => {
                return [];
            }
        },
    },
    data() {
        return {
            chart: null
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
            let ent = {}
            this.eventlist.map(item => {
                if(ent.hasOwnProperty(item.eventType)){
                    ent[item.eventType] += 1;
                } else {
                    let key = item.eventType == null ? '其他' : item.eventType;
                    ent[key] = 1;
                }
            })

            let series = [];
            let keys = Object.keys(ent);
            keys.map(key => { series.push(ent[key]) })

            let infos = {
                title: '应急处突类事件统计',
                yAxis: keys,
                series: [
                    {
                        type: 'bar',
                        barWidth: '50%',
                        itemStyle: {
                            color: new echarts.graphic.LinearGradient(
                                1, 0, 0, 0,  //4个参数用于配置渐变色的起止位置, 这4个参数依次对应右/下/左/上四个方位. 而0 0 0 1则代表渐变色从正上方开始
                                [
                                    {offset: 0, color: '#83bff6'},
                                    {offset: 0.5, color: '#188df0'},
                                    {offset: 1, color: '#188df0'}
                                ]
                            )
                        },
                        data: series
                    }
                ]
            }
            barCharts(this.chart, infos);
        }
    },
    watch: {
        eventlist( v ){
            this.updateChart()
        }
    },
    computed: {
        ...mapGetters([]),
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