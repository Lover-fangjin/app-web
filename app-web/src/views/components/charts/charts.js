
let labelColor = config.chart.labelColor;
let lineColor = config.chart.lineColor;

/**
 * 单个空心饼图
 * @param {*} _echart 
 * @param {*} data 
 */
export let barCharts = (_echart, data) => {
    labelColor = config.chart.labelColor;
    lineColor = config.chart.lineColor;   
    let option = {
        color: ['#ff7800', '#11ccc0', '#0fd65d', '#fcbc00'],
        title: {
            top: '5px',
            left: '10px',
            text:  data.title,
            left: 'left',
            textStyle: {
                color: labelColor,
                fontSize: 16,
                fontWeight: 'normal'
            }
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },

        legend: {
            top:'15px',
            right: '10px',
            orient: 'vertical',
            data:  data.legend,
            textStyle: {
                color: labelColor
            }
        },
        series: [
            {
                name: '访问来源',
                type: 'pie',
                radius: ['30%', '60%'],
                center: ['50%', '60%'],
                data: data.series,
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    _echart.setOption(option, true);
}

/**
 * 双仪表盘图
 * @param {*} _echart 
 * @param {*} data 
 */
export let doubleGaugeCarDark = (_echart, data) => {
    labelColor = config.chart.labelColor;
    lineColor = config.chart.lineColor;   
    let option = {
        // backgroundColor: '#1b1b1b',
        tooltip: {
            formatter: '{a}：{c}%'
        },
        title: {
            top: '5px',
            left: '10px',
            text: data.title,
            left: 'left',
            textStyle: {
                color: labelColor,
                fontSize: 16,
                fontWeight: 'normal'
            }
        },
        series:  [
            {
                name: '刑事类处置率',
                type: 'gauge',
                min: 0,
                max: 100,
                splitNumber: 10,
                radius: '85%',
                center: ['12.5%', '60%'],
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        // color: [[0.09, 'lime'], [0.82, '#1e90ff'], [1, '#ff4500']],
                        color: [[0.09, '#ff4500'], [0.82, '#1387eb'], [1, '#1387eb']],
                        width: 2,
                    }
                },
                axisLabel: {            // 坐标轴小标记
                    fontWeight: 'bolder',
                    color: labelColor,
                },
                axisTick: {            // 坐标轴小标记
                    length: 10,        // 属性length控制线长
                },
                splitLine: {           // 分隔线
                    length: 15,         // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 2,
                        color: lineColor //坐标线的颜色
                    }
                },
                pointer: {           // 分隔线
                },
                title: {
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontSize: 12,
                        color: labelColor
                    }
                },
                detail: {
                    formatter: value => { return value + '%'; },
                    backgroundColor: 'rgba(30,144,255,0.5)',
                    borderWidth: 0,
                    borderColor: labelColor,
                    offsetCenter: [0, '60%'],       // x, y，单位px
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontWeight: 'bolder',
                        fontSize: 12,
                        color: labelColor
                    }
                },
                data: [{value: data.xsl, name: '刑事类'}]
            },
            {
                name: '治安类处置率',
                type: 'gauge',
                min: 0,
                max: 100,
                splitNumber: 10,
                radius: '85%',
                center: ['37.5%', '60%'],
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        // color: [[0.09, 'lime'], [0.82, '#1e90ff'], [1, '#ff4500']],
                        color: [[0.09, '#ff4500'], [0.82, '#10d65a'], [1, '#10d65a']],
                        width: 2
                    }
                },
                axisLabel: {            // 坐标轴小标记
                    fontWeight: 'bolder',
                    color: labelColor
                },
                axisTick: {            // 坐标轴小标记
                    length: 10,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: 'auto'
                    }
                },
                splitLine: {           // 分隔线
                    length: 15,         // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 2,
                        color: lineColor //坐标线的颜色
                    }
                },
                title: {
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontSize: 12,
                        color: labelColor
                    }
                },
                detail: {
                    formatter: value => { return value + '%'; },
                    backgroundColor: '#10d65a7a',
                    borderWidth: 0,
                    borderColor: labelColor,
                    offsetCenter: [0, '60%'],       // x, y，单位px
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontWeight: 'bolder',
                        fontSize: 12,
                        color: labelColor
                    }
                },
                data: [{value: data.zal, name: '治安类'}]
            },
            {
                name: '纠纷类处置率',
                type: 'gauge',
                min: 0,
                max: 100,
                splitNumber: 10,
                radius: '85%',
                center: ['62.5%', '60%'],
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        // color: [[0.09, 'lime'], [0.82, '#1e90ff'], [1, '#ff4500']],
                        color: [[0.09, '#ff4500'], [0.82, '#1387eb'], [1, '#1387eb']],
                        width: 2,
                    }
                },
                axisLabel: {            // 坐标轴小标记
                    fontWeight: 'bolder',
                    color: labelColor,
                },
                axisTick: {            // 坐标轴小标记
                    length: 10,        // 属性length控制线长
                },
                splitLine: {           // 分隔线
                    length: 15,         // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 2,
                        color: lineColor //坐标线的颜色
                    }
                },
                pointer: {           // 分隔线
                },
                title: {
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontSize: 12,
                        color: labelColor
                    }
                },
                detail: {
                    formatter: value => { return value + '%'; },
                    backgroundColor: 'rgba(30,144,255,0.5)',
                    borderWidth: 0,
                    borderColor: labelColor,
                    offsetCenter: [0, '60%'],       // x, y，单位px
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontWeight: 'bolder',
                        fontSize: 12,
                        color: labelColor
                    }
                },
                data: [{value: data.jfl, name: '纠纷类'}]
            },
            {
                name: '求助类处置率',
                type: 'gauge',
                min: 0,
                max: 100,
                splitNumber: 10,
                radius: '85%',
                center: ['87.5%', '60%'],
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        // color: [[0.09, 'lime'], [0.82, '#1e90ff'], [1, '#ff4500']],
                        color: [[0.09, '#ff4500'], [0.82, '#10d65a'], [1, '#10d65a']],
                        width: 2
                    }
                },
                axisLabel: {            // 坐标轴小标记
                    fontWeight: 'bolder',
                    color: labelColor
                },
                axisTick: {            // 坐标轴小标记
                    length: 10,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: 'auto'
                    }
                },
                splitLine: {           // 分隔线
                    length: 15,         // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 2,
                        color: lineColor //坐标线的颜色
                    }
                },
                title: {
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontSize: 12,
                        color: labelColor
                    }
                },
                detail: {
                    formatter: value => { return value + '%'; },
                    backgroundColor: '#10d65a7a',
                    borderWidth: 0,
                    borderColor: labelColor,
                    offsetCenter: [0, '60%'],       // x, y，单位px
                    textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                        fontWeight: 'bolder',
                        fontSize: 12,
                        color: labelColor
                    }
                },
                data: [{value: data.qzl, name: '求助类'}]
            }
        ]
    };
    _echart.setOption(option, true);
}

/**
 * 横向柱壮图
 * @param {*} _echart 
 * @param {*} data 
 */
export let horBarCharts = (_echart, data) => {
    labelColor = config.chart.labelColor;
    lineColor = config.chart.lineColor;   
    let option = {
        color: ['#11ccc0', '#ff7800'],
        title: {
            top: '5px',
            left: '10px',
            text: data.title,
            left: 'left',
            triggerEvent: true,
            textStyle: {
                color: labelColor,
                fontSize: 16,
                fontWeight: 'normal'
            }
        },
        legend: {
            top: '10px',
            right: '15px',
            textStyle: {
                color: labelColor
            },
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: 
        {
            top: '45px',
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'value',
            minInterval: 1,
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: lineColor //坐标线的颜色
                }
            },
            axisLabel: {
                textStyle: {
                    color: labelColor //坐标值得具体的颜色
                }
            },
            splitLine:{
                show: true,
                lineStyle:{
                    type:'dashed',
                    color: lineColor //坐标线的颜色
                }
            },
        },
        yAxis: {
            type: 'category',
            triggerEvent: true,
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: lineColor //坐标线的颜色
                }
            },
            axisLabel: {
                textStyle: {
                    color: labelColor //坐标值得具体的颜色
                }
            },
            data: data.yAxis
        },
        series: [
            {
                name: data.series[0].name,
                type: 'bar',
                barCategoryGap: '40%',
                stack: '总量',
                // label: {
                //     show: true,
                //     position: 'insideRight'
                // },
                data: data.series[0].data,
            },
            {
                name:  data.series[1].name,
                type: 'bar',
                barCategoryGap: '40%',
                stack: '总量',
                // label: {
                //     show: true,
                //     position: 'insideRight'
                // },
                data:  data.series[1].data
            },
            
        ]
    };
    _echart.setOption(option, true);
}

/**
 * 竖向柱壮图
 * @param {*} _echart 
 * @param {*} data 
 */
export let verBarCharts = (_echart, data) => {
    labelColor = config.chart.labelColor;
    lineColor = config.chart.lineColor;   
    let option = {
        color: ['#11ccc0', '#ff7800'],
        title: {
            top: '5px',
            left: '10px',
            text: data.title,
            left: 'left',
            triggerEvent: true,
            textStyle: {
                color: labelColor,
                fontSize: 16,
                fontWeight: 'normal'
            }
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            top: '10px',
            right: '15px',
            textStyle: {
                color: labelColor
            },
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        yAxis: {
            type: 'value',
            minInterval: 1,
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: lineColor //坐标线的颜色
                }
            },
            axisLabel: {
                textStyle: {
                    color: labelColor //坐标值得具体的颜色
                }
            },
            splitLine:{
                show: true,
                lineStyle:{
                    type:'dashed',
                    color: lineColor //坐标线的颜色
                }
            },
        },
        xAxis: {
            type: 'category',
            triggerEvent: true,
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: lineColor //坐标线的颜色
                }
            },
            axisLabel: {
                textStyle: {
                    color: labelColor //坐标值得具体的颜色
                }
            },
            data: data.xAxis
        },
        series: [
            {
                name: data.series[0].name,
                type: 'bar',
                barCategoryGap: '40%',
                stack: '总量',
                label: {
                    show: true,
                    position: 'top'
                },
                data: data.series[0].data
            },
            {
                name: data.series[1].name,
                type: 'bar',
                barCategoryGap: '40%',
                stack: '总量',
                label: {
                    show: true,
                    position: 'top'
                },
                data: data.series[1].data
            }
        ]
    };
    _echart.setOption(option, true);
}

/**
 * 折线图
 * @param {*} _echart 
 * @param {*} data 
 */
export let singleLineCharts = (_echart, data) => {
    labelColor = config.chart.labelColor;
    lineColor = config.chart.lineColor;   
    let option = {
        color: ['#11ccc0', '#ff7800'],
        title: {
            top: '5px',
            left: '10px',
            text: data.title,
            left: 'left',
            textStyle: {
                color: labelColor,
                fontSize: 16,
                fontWeight: 'normal'
            }
        },
        grid: {
            top: '20%',
            left: '5%',
            right: '5%',
            bottom: '5%',
            containLabel: true
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'line'        // 默认为直线，可选为：'line' | 'shadow'
            },
            formatter: '时间段： {b} <br/> {a}：{c}起'
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: lineColor //坐标线的颜色
                }
            },
            axisLabel: {
                textStyle: {
                    color: labelColor //坐标值得具体的颜色
                }
            },
            data: data.xAxis
        },
        yAxis: {
            type: 'value',
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: lineColor //坐标线的颜色
                }
            },
            axisLabel: {
                textStyle: {
                    color: labelColor //坐标值得具体的颜色
                }
            },
            splitLine:{
                show: true,
                lineStyle:{
                    type:'dashed',
                    color: lineColor //坐标线的颜色
                }
            },
        },
        series: [
            {
                name: '发生警情',
                type: 'line',
                data: data.series,
                barCategoryGap: '40%',
                // label: {
                //     show: true,
                //     position: [0, -20],
                // },
            }
        ]
    };
    _echart.setOption(option, true);
}