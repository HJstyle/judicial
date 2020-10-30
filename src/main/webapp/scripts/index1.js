

var colors = ['#5793f3', '#d14a61', '#675bba'];


option = {
    color: colors,

    tooltip: {
        trigger: 'item',
        axisPointer: {
            type: 'cross'
        }
    },
    legend: {
        data:['实际值', '预测上限','预测下限'],
        icon: 'roundRect',
        textStyle: {
        	color: '#7093DB'
        }
    },
    grid: {
        top: 30,
        bottom: 60
    },
    xAxis: [
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLabel: {
            	color:'#7093DB',
            	interval: 0,
            	fontSize :12,
            	rotate:45,
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[1]
                }
            },
            axisPointer: {
                label: {
                	show: false,
                    formatter: function (params) {
                        return params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: ["2017.11.15", "2017.11.16", "2017.11.17", "2017.11.18", "2017.11.19", "2017.11.20", "2017.11.21", "2017.11.22", "2017.11.23", "2017.11.24", "2017.11.25", "2017.11.26"]
        }
    ],
    yAxis: [
        {
            type: 'value',
            max : 7,
            axisLabel: {
            	color:'#7093DB',
            	interval: 0,
            	fontSize :12,
            	formatter: '{value}'
            },
            min: 1,
            splitLine: {
                show: false
            },
           data: [1, 2, 3, 4, 5, 6, 7,8]
        }
    ],
    series: [
       
        {
            name:'实际值',
            type:'line',
            smooth: true,
	            markArea: {
	              silent: true,
	              label: {
	                  normal: {
	                      position: ['10%', '50%']
	                  }
	              },
	              data: [
	                  [{
	                      yAxis: 1,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(68,2,30,0.2)'
	                          }
	                      },
	                  }, {
	                      yAxis: 3
	                  }],
	                  [{
	                      yAxis: 3,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(87,81,29,0.2)'
	                          }
	                      },
	                  }, {
	                      yAxis: 5
	                  }],
	                  [{

	                      yAxis: 5,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(2,78,40,0.2)'
	                          }
	                      }
	                  }, {
							yAxis: 7,
	                  }]
	              ]
	     },
          data: [5.53]
        },{
        	type: 'line',
	        name: '预测上限',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	            	show: false,
	                color: '#00eef8',
	                opacity: 0
	            },
	            emphasis: {
	            	color: '#00eef8',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: '#00eef8',
	            }
	        },
	        data: [5.57, 5.73, 5.61, 5.63, 5.69, 5.64, 5.9,5.71,5.69,5.69,5.76,5.9],
        },
        {
        	type: 'line',
	        name: '预测下限',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	                color: '#ffbe0d',
	                opacity: 0
	            },
	            emphasis: {
	            	color: '#ffbe0d',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: '#ffbe0d',
	            }
	        },
	        data: [5.24, 5.44, 5.25, 5.08, 5.44, 5.46, 5.6,5.28,5.35,5.34,5.32,5.37],
        }
    ]
};

optionbtm = {
    color: colors,

    tooltip: {
        trigger: 'item',
        axisPointer: {
            type: 'cross'
        }
    },
    legend: {
        data:['实际值', '预测上限','预测下限'],
        icon: 'roundRect',
        textStyle: {
        	color: '#7093DB'
        }
    },
    grid: {
        top: 30,
        bottom: 60
    },
    xAxis: [
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLabel: {
            	color:'#7093DB',
            	interval: 0,
            	fontSize :12,
            	rotate:45,
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[1]
                }
            },
            axisPointer: {
                label: {
                	show: false,
                    formatter: function (params) {
                        return params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: ["2017.11.15", "2017.11.16", "2017.11.17", "2017.11.18", "2017.11.19", "2017.11.20", "2017.11.21", "2017.11.22", "2017.11.23", "2017.11.24", "2017.11.25", "2017.11.26"]
        }
    ],
    yAxis: [
        {
            type: 'value',
            max : 7,
            axisLabel: {
            	color:'#7093DB',
            	interval: 0,
            	fontSize :12,
            	formatter: '{value}'
            },
            min: 1,
            splitLine: {
                show: false
            },
           data: [1, 2, 3, 4, 5, 6, 7,8]
        }
    ],
    series: [
       
        {
            name:'实际值',
            type:'line',
            smooth: true,
	            markArea: {
	              silent: true,
	              label: {
	                  normal: {
	                      position: ['10%', '50%']
	                  }
	              },
	              data: [
	                  [{
	                      yAxis: 1,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(68,2,30,0.2)'
	                          }
	                      },
	                  }, {
	                      yAxis: 3
	                  }],
	                  [{
	                      yAxis: 3,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(87,81,29,0.2)'
	                          }
	                      },
	                  }, {
	                      yAxis: 5
	                  }],
	                  [{

	                      yAxis: 5,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(2,78,40,0.2)'
	                          }
	                      }
	                  }, {
							yAxis: 7,
	                  }]
	              ]
	     },
          data: [3.78]
        },{
        	type: 'line',
	        name: '预测上限',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	            	show: false,
	                color: '#00eef8',
	                opacity: 0
	            },
	            emphasis: {
	            	color: '#00eef8',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: '#00eef8',
	            }
	        },
	        data: [4.02, 3.98, 3.87, 3.68, 3.76,4.02, 3.82,3.8,3.84,3.62,3.84,4.08],
        },
        {
        	type: 'line',
	        name: '预测下限',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	                color: '#ffbe0d',
	                opacity: 0
	            },
	            emphasis: {
	            	color: '#ffbe0d',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: '#ffbe0d',
	            }
	        },
	        data: [3.67, 3.78, 3.43, 3.4, 3.39, 3.59, 3.43,3.31,3.53,3.33,3.53,3.52],
        }
    ]
};
optioncenter = {
    color: colors,

    tooltip: {
        trigger: 'item',
        axisPointer: {
            type: 'cross'
        }
    },
    legend: {
        data:['实际值', '预测上限','预测下限'],
        icon: 'roundRect',
        textStyle: {
        	color: '#7093DB'
        }
    },
    grid: {
        top: 30,
        bottom: 60
    },
    xAxis: [
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLabel: {
            	color:'#fff',
            	interval: 0,
            	fontSize :12,
            	rotate:45,
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[1]
                }
            },
            axisPointer: {
                label: {
                	show: false,
                    formatter: function (params) {
                        return params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: ["2017.11.15", "2017.11.16", "2017.11.17", "2017.11.18", "2017.11.19", "2017.11.20", "2017.11.21", "2017.11.22", "2017.11.23", "2017.11.24", "2017.11.25", "2017.11.26"]
        }
    ],
    yAxis: [
        {
            type: 'value',
            max : 7,
            axisLabel: {
            	color:'#7093DB',
            	interval: 0,
            	fontSize :12,
            	formatter: '{value}'
            },
            min: 1,
            splitLine: {
                show: false
            },
           data: [1, 2, 3, 4, 5, 6, 7,8]
        }
    ],
    series: [
       
        {
            name:'实际值',
            type:'line',
            smooth: true,
	            markArea: {
	              silent: true,
	              label: {
	                  normal: {
	                      position: ['10%', '50%']
	                  }
	              },
	              data: [
	                  [{
	                      yAxis: 1,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(68,2,30,0.2)'
	                          }
	                      },
	                  }, {
	                      yAxis: 3
	                  }],
	                  [{
	                      yAxis: 3,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(87,81,29,0.2)'
	                          }
	                      },
	                  }, {
	                      yAxis: 5
	                  }],
	                  [{

	                      yAxis: 5,
	                      itemStyle: {
	                          normal: {
	                              color: 'rgba(2,78,40,0.2)'
	                          }
	                      }
	                  }, {
							yAxis: 7,
	                  }]
	              ]
	     },
          data: [5.69]
        },{
        	type: 'line',
	        name: '预测上限',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	            	show: false,
	                color: '#00eef8',
	                opacity: 0
	            },
	            emphasis: {
	            	color: '#00eef8',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: '#00eef8',
	            }
	        },
	        data: [5.83, 5.75, 5.85, 5.55, 5.56,5.53, 5.61,5.68,5.74,5.56,5.57,5.78],
        },
        {
        	type: 'line',
	        name: '预测下限',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	                color: '#ffbe0d',
	                opacity: 0
	            },
	            emphasis: {
	            	color: '#ffbe0d',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: '#ffbe0d',
	            }
	        },
	        data: [5.48, 5.52, 5.39, 5.2, 5.28, 5.04, 5.29,5.33,5.42,5.31,5.28,5.42],
        }
    ]
};
 // 折线
var colors = ['#0997c1', '#c22167', '#082773', '#604fb9', '#0067c3', '#68cdfb','#5793f3', '#d14a61', '#675bba'];
//[];

option1 = {
    color: colors,

   tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
    grid: {
        right: '20%'
    },
/*    toolbox: {
        feature: {
            dataView: {show: true, readOnly: false},
            restore: {show: true},
            saveAsImage: {show: true}
        }
    },*/
    legend: {
        data:['租赁纠纷','民间借贷纠纷','交通事故赔偿','法定继承纠纷','追索劳动报酬纠纷','其他民事','初审','再审'],
        textStyle: {
            color:"#7093DB"
        },
       /* icon: 'roundRect',*/
        orient: 'left',
      	x: 'right',
        textStyle: {
          fontSize: '14',
          color: '#7093DB'
        },
    },
    xAxis: [
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            data: ['2012','2013','2014','2015','2016'],
            axisLabel: {
                formatter: '{value}',
                color:"#7093DB"
            }
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: '数量(个)',
            min: 0,
            max: 109197,
            position: 'left',
            axisLine: {
                lineStyle: {
                    color: colors[0]
                }
            },
            axisLabel: {
                formatter: '{value}',
                color:"#7093DB"
            },
            splitLine: {
	            show: true,
	            lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
	              color: 'rgba(255, 255, 255, 0)',
	            }
          	},
        },
        {
            type: 'value',
            name: '降水量',
             show:false
 /*           min: 0,
            max: 250,
            position: 'right',
            offset: 80,
            axisLine: {
                lineStyle: {
                    color: colors[1]
                }
            },
            axisLabel: {
                formatter: '{value} ml',
                color:"#fff"
            },*/
            
        },
        {
            type: 'value',
            name: '温度',
            show:false
/*            min: 0,
            max: 25,
            position: 'left',
            axisLine: {
                lineStyle: {
                    color: colors[2]
                }
            },
            axisLabel: {
                formatter: '{value} °C',
                color:"#fff"
            }*/
        }
    ],
    series: [
        {
            name:'租赁纠纷',
            type:'bar',
            data:[3343, 5353, 7234, 11373, 34439]
        },
        {
            name:'民间借贷纠纷',
            type:'bar',
            yAxisIndex: 1,
            data:[882, 7961, 6391, 8478, 81709]
        },
         {
            name:'交通事故赔偿纠纷',
            type:'bar',
            yAxisIndex: 1,
            data:[696, 9343, 8087, 7290, 95863]
        },{
            name:'法定继承纠纷',
            type:'bar',
            yAxisIndex: 1,
            data:[927, 7501, 7244, 16896, 109197]
        },
        {
            name:'追索劳动报酬纠纷',
            type:'bar',
            yAxisIndex: 1,
            data:[653, 6454, 8163, 7006, 63719]
        },
        {
            name:'其他民事',
            type:'bar',
            yAxisIndex: 2,
            data:[780, 1354, 16783, 13472, 23535]
        },
        {
            name:'初审',
            type:'line',
            yAxisIndex: 2,
            data:[4879, 27898, 36294, 49270, 206786]
        },
        {
            name:'再审',
            type:'line',
            yAxisIndex: 2,
            data:[2785, 13246, 67959, 63032, 435618]
        },
    ]
};
 /*option1 = {

        legend: {
          show: true,
          data:['原棉','家纺成品'],
          icon: 'roundRect',
          	orient: 'left',
      		x: 'right',
            textStyle: {
              fontSize: '14',
              color: '#fff'
            },
        },
        grid: {
          left: '6%',
          right: '17%',
          top: '18%',
          bottom: '6%',
          containLabel: true
        },
        textStyle: {
          fontSize: '14',
          fontWeight: 'normal',
          color: '#ffffff'
        },
        xAxis: {
          show: true,
          type: 'category',
          boundaryGap: false,
          data: ['2017-11-1','2017-11-8','2017-11-15','2017-11-22','2017-11-29','11-7','11-8'],
        },
        yAxis: {
          show: true,
          type: 'value',
          symbol: 'circle',
       	  symbolSize: 10,
          smooth: true,
          splitLine: {
            show: true,
            lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
              color: 'rgba(255, 255, 255, 0.06)',
            }
          },
          axisLabel: {
            formatter: function(params) {
              if (params === 0) {
                return ''
              } else {
                return params
              }
            }
          }
        },
        series: [{
          name: '原棉',
          type: 'line',
           symbol: 'circle',
            smooth: true,
          itemStyle: {
            normal: {
              lineStyle: {
                color: 'rgba(197, 38, 78, 0.9)'
              }
            }
          },
          areaStyle: {
            normal: {
              color: {
                type: 'linear',
                x: 0,
                y: 0,
                x2: 0,
                y2: 1,
                colorStops: [{
                  offset: 0,
                  color: 'rgba(197, 38, 78, 0.4)',
                }, {
                  offset: 1,
                  color: 'rgba(255, 225, 0, 0.1)',
                }],
                globalCoord: false
              },
            }
          },
          data: [150,113,60,120,30,280,200]
        },{
        type: 'line',
        name: '家纺成品',
        symbol: 'circle',
        symbolSize: 10,
        smooth: true,
        itemStyle: {
            normal: {
                color: 'rgb(5, 194, 92)',
            }
        },
        lineStyle: {
            normal: {
				color: 'rgb(5, 194, 92)',
            }
        },
        data: [30, 25, 74, 143, 93, 100, 135]
    },{
            name:'蒸发量',
            type:'bar',
            barWidth: 10,
            itemStyle: {
	            normal: {
	                color: 'rgb(5, 194, 92)',
	            }
	        },
            data:[7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6]
        }]
};*/
//折线xiao
var	optionl2 = {
color: 'rgba(0, 184, 236, 0.9)',
   tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
        legend: {
          show: true,
          	orient: 'left',
      		x: 'right',
            textStyle: {
              fontSize: '14',
              color: '#7093DB'
            },
        },
        grid: {
          left: '6%',
          right: '6%',
          top: '18%',
          bottom: '6%',
          containLabel: true
        },
        textStyle: {
          fontSize: '14',
          fontWeight: 'normal',
          color: '#7093DB'
        },
        xAxis: {
                 type: 'category',
            axisTick: {
                alignWithLabel: true,
                inside: true
            },
            axisLabel: {
            	color:'#7093DB',
            	interval: 0,
            	fontSize :12,
            	rotate:45,
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: '#7093DB'
                }
            },	
            axisPointer: {
                label: {
                    show: false,
                    backgroundColor:'#007EDD'
                }
            },
            
          data: ['2017/11/1','2017/11/8','2017/11/15','2017/11/22','2017/11/29'],
        },
        yAxis: {
          show: true,
           axisLabel: {
            	color:' #7093DB',
            	interval: 0,
            	fontSize :12
            },
             axisTick: {
               alignWithLabel: true,
                inside: true
            },
              axisLine: {
                onZero: false,
                lineStyle: {
                    color: '#7093DB'
                }
            },
              axisPointer: {
                label: {
                	show: false,
                }
            },
          type: 'value',
          symbol: 'circle',
       	  symbolSize: 10,
          smooth: true,
          splitLine: {
            show: true,
            lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
              color: 'rgba(255, 255, 255, 0)',
            }
          }
        },
        series: [{
		    type: 'line',
	        name: '产品或服务产能指数',
	        symbol: 'circle',
	        symbolSize: 10,
	        smooth: true,
	        itemStyle: {
	            normal: {
	                color: 'rgba(0, 184, 236, 0)',
	            },
	            emphasis: {
	            	color: 'rgba(0, 184, 236, 1)',
	            }
	        },
	        lineStyle: {
	            normal: {
					color: 'rgba(0, 184, 236, 0.9)',
	            }
	        },
	        data: [5.18, 5.26, 5.05, 5.14, 5.27],
	          areaStyle: {
	            normal: {
	              color: {
	                type: 'linear',
	                x: 0,
	                y: 0,
	                x2: 0,
	                y2: 1,
	                colorStops: [{
	                  offset: 0,
	                  color: 'rgba(0, 184, 236, 0.4)',
	                }, {
	                  offset: 1,
	                  color: 'rgba(0, 184, 236, 0.1)',
	                }],
	                globalCoord: false
	              },
	            }
	          },
        }]
};

//训练数据
var optionx = {
    color:['#5ed5fd'],
    grid:{
        left: '5%',
        right: '5%',
        bottom: '10%',
        containLabel: true
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a}<br/>{b}<br/>{c}人"
    },
    calculable : true,
    yAxis : [
        {
            type : 'category',
            data : ['租赁合同纠纷','民间借贷纠纷','交通事故','追索劳动报酬','交通事故损害赔偿'],
            axisLine:{
                lineStyle:{
                    color: '#7afdf5'
                },
            },
            axisLabel : {
                textStyle: {
                    color: '#7afdf5'
                }
            }
        }
    ],
    xAxis : [
        {
            type : 'value',
            axisLine:{
                lineStyle:{
                    color: '#41fdfa'
                },
            },
            splitLine: {
                "show": false
            },
            axisLabel: {
                textStyle: {
                    color: '#7afdf5'
                },
                formatter: function (value) {
                    return value + ""
                },
            },
        }
    ],
    series : [
        {
            name:'主要症状',
            type:'bar',
            barWidth : 20,
            data:[64,51,37,31,36],
        },
    ]
}

optionr = {
    title: {
        text: '实验结果',
        subtext: ''
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['准确率', '召回率']
    },
    toolbox: {
        show: true,
        feature: {
            dataZoom: {
                yAxisIndex: 'none'
            },
            dataView: {readOnly: false},
            magicType: {type: ['line', 'bar']},
            restore: {},
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['房屋租赁合同纠纷', '民间借贷纠纷', '交通事故', '追索劳动报酬纠纷', '交通事故损害赔偿纠纷']
    },
    yAxis: {
        type: 'value',
        axisLabel: {
            formatter: '{value} °C'
        }
    },
    series: [
        {
            name: '准确率',
            type: 'line',
            data: [90.9,85.3,86.4,81.3,70.4],
            markPoint: {
                data: [
                    {type: 'max', name: '最大值'},
                    {type: 'min', name: '最小值'}
                ]
            },
            markLine: {
                data: [
                    {type: 'average', name: '平均值'}
                ]
            }
        },
        {
            name: '召回率',
            type: 'line',
            data: [65.1,70.1,70.2,63.3,61.2],
            markPoint: {
                data: [
                    {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
                ]
            },
            markLine: {
                data: [
                    {type: 'average', name: '平均值'},
                    [{
                        symbol: 'none',
                        x: '90%',
                        yAxis: 'max'
                    }, {
                        symbol: 'circle',
                        label: {
                            position: 'start',
                            formatter: '最大值'
                        },
                        type: 'max',
                        name: '最高点'
                    }]
                ]
            }
        }
    ]
};

option2 = {
      title: {
        text: '合计',
        textStyle:{
        	color: '#fff'
        },
                subtext: '8,210,481,162.58',
        subtextStyle: {
        	color: '#fff',
        	fontSize:18,
        },
        x: 'center',
        y: 'center' 
      },
      tooltip: {
        trigger: 'item',
        formatter: '{c}'
      },
      legend: {
      	show: true,
        y: 'top',
        data:['非受限库存现金','应收款项类','其他非流动资产类','固定资产类','金融资产类','其他流动资产类项类'],
      	orient: 'left',
  		x: 0,
  		y: 0,
        textStyle: {
          fontSize: '14',
          color: '#fff'
        },
      },
      calculable: true,
      series: [
        {
          color: ['#0997c1', '#c22167', '#082773', '#604fb9', '#0067c3', '#68cdfb'],
          type: 'pie',
          radius: [50, 200],
          center: ['50%', '50%'],
          
          //roseType: 'radius',
          label: {
              normal: {
                 /* position: 'inside',*/
                color:"#fff"
              }
          },
          tooltip: {
      	    formatter: function (params) {
          	   var b=parseFloat(params.value).toString();
			   var len=b.length;
			   if(len<=3){return b;}
			   var r=len%3;
			   var aNew = b.split(".")[1];
			   return r>0?b.slice(0,r)+","+b.slice(r,len).match(/\d{3}/g).join(",")+"."+aNew:b.slice(r,len).match(/\d{3}/g).join(",");
            }
          },
          itemStyle: {
                normal: {
                    
                    /*borderWidth: 14.5,
                    borderColor: 'rgba(255, 255, 255, 1)'*/
                }
          },
          data: [
             {value: 1578125718.62, name:'非受限库存现金'},
             {value: 1135040262.72, name: '应收款项类'},
             {value: 1276828336.26, name: '其他非流动资产类'},
             {value: 2890680272.55, name: '固定资产类'},
             {value: 108959878.55, name: '金融资产类'},
             {value: 1183489550.95, name: '其他流动资产类项类'},
          ]
        }
      ]
    }
option22 = {
      title: {
        text: '合计',
        subtext: '4,363,978,628.282',
        subtextStyle: {
        	color: '#fff',
        	fontSize:18,
        },
        textStyle:{
        	color: '#fff',
        	verticalAlign: 'top'
        },
        x: 'center',
        y: 'center' 
      },
      tooltip: {
        trigger: 'item',
        formatter: '{c}'
      },
      legend: {
      	show: true,
        y: 'top',
        data:['非受限库存现金','应收款项类','其他非流动资产类','固定资产类','金融资产类','其他流动资产类项类'],
          	orient: 'top',
      		x: 0,
      		y: 0,
            textStyle: {
              fontSize: '14',
              color: '#fff'
            },
      },
      calculable: true,
      series: [
        {
          color: ['#0997c1', '#c22167', '#082773', '#604fb9', '#0067c3', '#68cdfb'],
          type: 'pie',
          radius: [50, 200],
          center: ['50%', '50%'],
          
          //roseType: 'radius',
          label: {
              normal: {
                                   /* position: 'inside',*/
                color:"#fff"
              }
          },
          tooltip: {
      	    formatter: function (params) {
          	   var b=parseFloat(params.value).toString();
			   var len=b.length;
			   if(len<=3){return b;}
			   var r=len%3;
			   var aNew = b.split(".")[1];
			   return r>0?b.slice(0,r)+","+b.slice(r,len).match(/\d{3}/g).join(",")+"."+aNew:b.slice(r,len).match(/\d{3}/g).join(",");
            }
          },
          itemStyle: {
                normal: {
                    
                    /*borderWidth: 14.5,
                    borderColor: 'rgba(255, 255, 255, 1)'*/
                }
          },
          data: [
             {value: 1578125718.62, name:'非受限库存现金'},
             {value: 798957183.904, name: '应收款项类'},
             {value: 568063603.409, name: '其他非流动资产类'},
             {value: 54479939.275, name: '固定资产类'},
             {value: 898636362.694, name: '金融资产类'},
             {value: 1465715820.38, name: '其他流动资产类项类'},
          ]
        }
      ]
    }


/*var webkitDep = {  
    "type": "force",  
    "categories": [//关系网类别，可以写多组  
        {  
            "name": "人物关系",//关系网名称  
            "keyword": {},  
            "base": "人物关系"  
        }  
    ],  
    "nodes": [//展示的节点  
        {  
            "name": "齐悦科技",//节点名称  
            "value": 3,  
            "category": 0//与关系网类别索引对应，此处只有一个关系网所以这里写0  
        },  
        {  
            "name": "股权链",  
            "value": 1,  
            "category": 0  
        },  
        {  
            "name": "信用链",  
            "value": 1,  
            "category": 0  
        },
       {  
            "name": "股东",  
            "value": 1,  
            "category": 0  
        } 
    ],  
    "links": [//节点之间连接  
        {  
            "source": 0,//起始节点，0表示第一个节点  
            "target": 1 //目标节点，1表示与索引为1的节点进行连接  
        },  
        {  
            "source": 0,  
            "target": 2  
        },{  
            "source": 1,  
            "target": 3  
        }  
    ]  
};  
  
    optiongx = {  
        legend: {  
            data: ['人物关系']//此处的数据必须和关系网类别中name相对应  
        },  
        series: [{  
            type: 'graph',  
            layout: 'force',  
            animation: false,  
            label: {  
                normal: {  
                    show:true,  
                    position: 'right'  
                }  
            },  
            draggable: true,  
            data: webkitDep.nodes.map(function (node, idx) {  
                node.id = idx;  
                return node;  
            }),  
            categories: webkitDep.categories,  
            force: {  
                edgeLength: 105,//连线的长度  
                repulsion: 100  //子节点之间的间距  
            },  
            edges: webkitDep.links  
        }]  
    };  
    var guanxi = echarts.init(document.getElementById('guanxi'));
    guanxi.setOption(optiongx);  */
   function tohref(){
   		window.location.href = "sanlian.html?1";
   }
   function toindex(){
   		window.location.href = "index.html";
   			
   		
   }

function loadtm(){
	var days=new  Array ("日", "一", "二", "三", "四", "五", "六");  
	  var currentDT = new Date();  
	  var y,m,date,day,hs,ms,ss,theDateStr;  
	  y = currentDT.getFullYear(); //四位整数表示的年份  
	  m = currentDT.getMonth(); //月  
	  date = currentDT.getDate(); //日  
	  day = currentDT.getDay(); //星期  
	  hs = currentDT.getHours(); //时  
	  ms = currentDT.getMinutes(); //分  
	  ss = currentDT.getSeconds(); //秒  
	  //theDateStr = y+"年"+  m +"月"+date+"日 星期"+days[day]+" "+hs+":"+ms+":"+ss; 
	  theDateStr = " "+p(hs)+":"+p(ms)+":"+p(ss); 
	  // console.log(theDateStr)
	  // $(".tmtext>span span").html(theDateStr);
	  // setTimeout 在执行时,是在载入后延迟指定时间后,去执行一次表达式,仅执行一次  
	 
}
  function p(s) {
        return s < 10 ? '0' + s: s;
    }
 window.setInterval( loadtm, 1000);  