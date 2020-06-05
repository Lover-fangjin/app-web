<template>
    <div class="ncov">
      <div class="charts" ref="charts"></div>
    </div>
</template>

<script>
/**
 * 业务类型统计图
 * @author hejin 2020-3-4
 */
import echarts from "echarts";
import { mapGetters } from 'vuex';
import { pieCharts, barCharts } from './charts.js'
import { highlight, unHighlight } from '../poi/poi.js'
import { lookAndFlyEntityOfName } from '@/util/common3d';
import { isEmptyArray } from '../../../../util/tools.js';

export default {
    props: {
        bType: {
            type: String,
            default: 'businessTypeGj'
        },
    },
    computed: {
        ...mapGetters([
            'statistic', 'currentArea'
        ])
    },
    data() {
        return {
            chart: null
        }
    },
    mounted () {
        let me = this;
        me.chart = echarts.init(me.$refs.charts);

        //根据窗口的大小变动图表
        window.addEventListener("resize", () => {
            me.chart.resize();
        });

        me.chart.on("click", param => {
            let _bnsClass = me.bType == 'businessTypeGj' ? '1' : '2'; 
            let _bnsType = param.componentType == "yAxis" ? param.value : param.name;
            me.$router.push({ name: "search", query: {bnsClass: _bnsClass, bnsType: _bnsType} }).catch(err => { err; });
        });
    },
    methods: {
        updateChart( result ){
            let legend = [], total = 0, me = this;
            let values = result[this.bType];
            let series = values.map(item => {
                legend.push(item.business_type)
                total += item.count;
                let _item = {
                    value: item.count,
                    name: item.business_type
                    
                }
                return _item;
            })
            let _title = me.bType == 'businessTypeGj' ? '供给侧业务类型统计图' : '需求侧业务类型统计图';
            let _color = me.bType == 'businessTypeGj' ?'#83bff6':'#11cec3' , _color1 = me.bType == 'businessTypeGj' ?'#188df0':'#13ae8f';
            
            let infos = {
                title: _title,
                yAxis: legend,
                series: {
                    type: 'bar',
                    barWidth: '50%',
                    itemStyle: {
                        normal: {
                            barBorderRadius: [0,7,7,0],
                            color: new echarts.graphic.LinearGradient(
                                1, 0, 0, 0,  //4个参数用于配置渐变色的起止位置, 这4个参数依次对应右/下/左/上四个方位. 而0 0 0 1则代表渐变色从正上方开始
                                [
                                    {offset: 0, color: _color},
                                    {offset: 1, color: _color1},
                                ]
                                
                            ), 
                        }
                    },
                    label: {
                        show: true, //开启显示
                        position: "right", //在上方显示
                        textStyle: {
                            //数值样式
                            color: "#fff",
                            fontSize: 12
                        }
                    },
                    data: series
                }
            }
            barCharts(this.chart, infos);
        }
    },
     watch: {
        'statistic'(result) {
            this.updateChart(result);
        }
    }
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.ncov{
    height: 100%;
    width: 100%;
}
.charts {
    width: 100%;
    height: 100%;
}
</style>

  