<template>
    <div class="ncov">
      <div class="charts" ref="charts"></div>
    </div>
</template>

<script>
/**
 * 执勤统计
 * @author hejin 2020-3-4
 */
import echarts from "echarts";
import { mapGetters } from 'vuex';
import { dutyCharts, pieCharts } from './charts.js'
import { highlight, unHighlight } from '../poi/poi.js'
import { lookAndFlyEntityOfName } from '@/util/common3d';
import { isEmptyArray } from '../../../../util/tools.js';

export default {
    computed: {
        ...mapGetters([
            'siteInfos'    
        ])
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

        this.chart.on("mouseover", param => {
            if (!param || !param.name) return;
            highlight(param.name);
        });
        this.chart.on("mouseleave", param => {
            if (!param || !param.name) return;
            unHighlight();
        });
        this.chart.on("click", param => {
            if (!param || !param.name) return;
            lookAndFlyEntityOfName(param.name);
        });
    },
    methods: {
        updateChart() {
            let me = this;
            me.$api.getDutyNum().then(res =>{
                if(res.resultCode === 200){
                    let xAxis = [], series = [];
                    let sites = res.result.site;
                    sites.map(site => {
                        xAxis.push(site.name);
                        series.push(
                            {
                                value: site.count,
                                name: site.name
                            }
                        );
                    })
                    // let sitesInfo = {
                    //     title: '在岗人员统计',
                    //     legend: [ '上岗人数' ],
                    //     xAxis: xAxis,
                    //     series: [
                    //         {
                    //             name: '上岗人数',
                    //             type: 'bar',
                    //             barWidth : 30,
                    //             data: series
                    //         }
                    //     ]
                    // }
                    // dutyCharts(this.chart, sitesInfo);
                    let sitesInfo = {
                        title: '岗位人员统计图',
                        legend: xAxis,
                        series: series,
                    }
                    pieCharts(this.chart, sitesInfo);
                }
            });
        },
        updateCharts(_projects){
            let me = this, sites = []
            
            if(!isEmptyArray(_projects)){
                _projects.map(project => {
                    sites = sites.concat(project.sites);
                })
            }
            // let xAxis = [], series = [];
            // sites.map(site => {
            //     xAxis.push(site.name);
            //     series.push(
            //         {
            //             value: site.count,
            //             name: site.name
            //         }
            //     );
            // }) 
            // let sitesInfo = {
            //     title: '在岗人员统计',
            //     legend: xAxis,
            //     series: series,
            // }
            // pieCharts(this.chart, sitesInfo);
        },
    },
    watch: {
        'siteInfos'(value) {
            this.updateCharts(value)
        }
    },
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.ncov{
    // background: #00389e47;
    height: 100%;
    width: 100%;
    background-image: url('../../../../assets/hengL.png');background-repeat: no-repeat;
    border: 1px solid $duty-wind-border;
}
.charts {
    width: 100%;
    height: 100%;
}
</style>