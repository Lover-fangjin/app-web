export let dutyCharts = (_echart, data) => {
    let option = {
        color: ['#006699', '#4cabce'],
        title: {
            top: '10px',
            text: data.title,
            left: 'center',
            textStyle: {
                color: 'white'
            }
        },
        grid: {
            top: '90px',
            left: '5%',
            right: '5%',
            bottom: '5%',
            containLabel: true
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            top:'45px',
            left: '5%',
            data: data.legend,
            textStyle: {
                color: "white"
            }
        },
        toolbox: {
            show: true,
            left: 'right',
            feature: {
                // magicType: {show: true, type: [ 'stack', 'tiled']},
                // saveAsImage: {show: true}
            },
            iconStyle: {
                borderColor: "white"
            }
        },
        xAxis: [
            {
                type: 'category',
                axisTick: {show: false},
                data: data.xAxis,
                axisLabel: {
                    textStyle: {
                        color: "white" //坐标值得具体的颜色
                    },
                    interval: 0,
                    rotate: 40,
                    formatter:function(value)
                    {
                        let label = value.length > 5 ? value.substring(0, 4) + '…' : value;
                        // return label.split("").join("\n");
                        return label;
                    }
                },
                axisLine: {
                    lineStyle: {
                        type: "solid",
                        color: "white" //坐标线的颜色
                    }
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                interval : 1,
                axisLine: {
                    lineStyle: {
                        type: "solid",
                        color: "white" //坐标线的颜色
                    }
                },
                axisLabel: {
                    textStyle: {
                        color: "white" //坐标值得具体的颜色
                    }
                }
            }
        ],
        series: data.series
    };

    _echart.setOption(option, true);
}

/**
 * 
 * 业务统计图
 */
export let pieCharts = (_echart, data) => {
    
    let option = {
        color: ['#1d77d2', '#03519f','#8cc4fc','#46a1fe'],
        title: {
            top: '10px',
            text: data.title,
            left: 'center',
            textStyle: {
                color: 'white'
            }
        },
        tooltip: {
            trigger: 'item',
            formatter: '{b} : {c} 家({d}%)',
        },
        series: [
            {
                name: '业务类型统计图',
                type: 'pie',
                data: data.series,
                radius: ['30%', '60%'],
                center: ['50%', '60%'],
                // roseType: 'area',
                label: {
                    formatter: '{b} : \n {c} 家({d}%)',
                    rich: {
                        b: {
                            fontSize: 12,
                            lineHeight: 18
                        },
                        per: {
                            color: '#eee',
                            backgroundColor: '#334455',
                            padding: [2, 0],
                            borderRadius: 2,
                        }
                    }
                },
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

export let barCharts = (_echart, data) => {
    let option = {
        title: {
            top: '10px',
            text: data.title,
            left: 'center',
            textStyle: {
                color: 'white'
            }
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '5%',
            right: '5%',
            bottom: '5%',
            containLabel: true
        },
        xAxis: {
            type: 'value', 
            minInterval: 1,
            axisLabel: {
                textStyle: {
                    color: "white" //坐标值得具体的颜色
                }
            },
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: "white" //坐标线的颜色
                }
            },
            splitLine:{
                show:true,
                lineStyle:{
                    type:'dashed'
                }
            },
        },
        yAxis: {
            type: 'category',
            data: data.yAxis,
            triggerEvent: true,
            axisLine: {
                lineStyle: {
                    type: "solid",
                    color: "white" //坐标线的颜色
                }
            },
            axisLabel: {
                clickable: true,
                textStyle: {
                    color: "white" //坐标值得具体的颜色
                }
            }
            
        },
        series: data.series
    };

    _echart.setOption(option, true);
}

/**
 * 信用等级统计图
 */ 
export let doublePieChart = (_echart,data) => {

    let option = {
        legend: [
            {
                left:"center",
                bottom: 10,
                width: '100%',
                data: data.legend[0],
                textStyle: {
                    color: "white"
                }
            },
        ],
        tooltip: {
            trigger: 'item',
            formatter: '{b} : {c} 家({d}%)',
            textStyle:{
                fontSize: 14
            }
        },
        graphic:{
            type:"text",
            left:"center",
            top:"center",
            style:{
                text: data.total,
                textAlign:"center",
                fill:"#fff",
                fontSize: 40
            }
        },
        title: [{
            top: '10px',
            text: data.title,
            left: '50%',
            textAlign: 'center',
            textStyle: {
                color: 'white',
                fontSize: 16,
            }
        }], 
        series: [ {
            type: 'pie',
            color: ['#ff7800','#00fff0','#32b16c','#8f82bc','#ffbf00',],
            radius: ['40%', '60%'],
            label: {
                formatter: '{b} : {c} 家({d}%)',
                fontSize: 14,
                rich: {
                    b: {
                        fontSize: 12,
                        lineHeight: 18
                    },
                    per: {
                        color: '#eee',
                        backgroundColor: '#334455',
                        padding: [2, 0],
                        borderRadius: 2,
                    }
                }
            },
            data: data.series[0]
        }]
    };

    _echart.setOption(option, true);
}