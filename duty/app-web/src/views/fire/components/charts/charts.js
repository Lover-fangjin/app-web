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
            formatter: '{a} <br/>{b} : {c}人',
            axisPointer: {
                type: 'shadow'
            }
        },
        // legend: {
        //     orient: 'vertical',
        //     top: '50px',
        //     left: '10px',
        //     data: data.legend,
        //     textStyle: {
        //         color: "white"
        //     }
        // },
        series: [
            {
                name: '上岗人数',
                type: 'pie',
                radius: ['30%', '45%'],
                center: ['50%', '50%'],
                data: data.series,
                label: {
                    formatter: '{b|{b}：}\n {c} 人',
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
            }
        },
        yAxis: {
            type: 'category',
            data: data.yAxis,
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
        },
        series: data.series
    };

    _echart.setOption(option, true);
}

export let doublePieChart = (_echart,data) => {
    let option = {
        tooltip: {},
        legend: [
            {
                left: '10%',
                bottom: 10,
                width: '40%',
                data: data.legend[0],
                textStyle: {
                    color: "white"
                }
            },
            {
                left: '60%',
                bottom: 10,
                width: '40%',
                data: data.legend[1],
                textStyle: {
                    color: "white"
                }
            }
        ],
        title: [{
            top: '10px',
            text: data.title[0],
            left: '25%',
            textAlign: 'center',
            textStyle: {
                color: 'white',
                fontSize: 16,
            }
        }, {
            top: '10px',
            text: data.title[1],
            left: '75%',
            textAlign: 'center',
            textStyle: {
                color: 'white',
                fontSize: 16,
            }
        }], 
        series: [ {
            type: 'pie',
            color: ['#30c986','#ebbb2d','#ff3d3d'],
            radius: ['20%', '40%'],
            center: ['25%', '50%'],
            // label: {
            //     emphasis: {
            //         show: true,
            //         textStyle: {
            //             fontSize: '16',
            //             fontWeight: 'bold'
            //         }
            //     }
            // },
            label: {
                formatter: '{b|{b}：}\n {c}人',
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
        }, {
            type: 'pie',
            color: ['#25b3f9','#ff7a37'],
            radius: ['20%', '40%'],
            center: ['75%', '50%'],
            label: {
                formatter: '{b|{b}：}\n{c} 人',
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
            data: data.series[1]
        }]
    };

    _echart.setOption(option, true);
}