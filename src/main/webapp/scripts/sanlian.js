//三链图
        // 路径配置
       // require.config({
       //      paths: {
       //          echarts: 'http://echarts.baidu.com/build/dist'
       //      }
       //  });
    var nodes = [];
	var links = [];
	var constMaxDepth = 2;
	var constMaxChildren = 7;
	var constMinChildren = 4;
	var constMaxRadius = 10;
	var constMinRadius = 2;

nodes = [//展示的节点
    {
        "name": "承租人",//节点名称
        "value": 43,
        "depth": 0,
        "id": 0,
        "category": 3//与关系网类别索引对应，此处只有一个关系网所以这里写0
    },
    {
        "name": "甲方",
        "value": 10,
        "category": 2,
        "depth": 1,
        "id": 1,
    },
    {
        "name": "承租者",
        "value": 10,
        "category": 2,
        "depth": 2,
        "id": 2,
    },
    {
        "name": "出租人",
        "value": 43,
        "category": 1 ,
        "depth": 1,
        "id": 3
    },{
        "name": "乙方",
        "value": 3,
        "category": 0 ,
        "depth": 1,
        "id": 4
    },{
        "name": "出租者",
        "value": 3,
        "category": 0 ,
        "depth": 1,
        "id": 5
    },{
        "name": "实际支付租金数额",
        "value": 43,
        "category": 2,
        "depth": 3,
        "id": 6,
    },
    {
        "name": "支付",
        "value": 10,
        "category": 1 ,
        "depth": 1,
        "id": 7
    },{
        "name": "租金",
        "value": 10,
        "category": 0 ,
        "depth": 1,
        "id": 8
    },{
        "name": "交纳",
        "value": 10,
        "category": 0 ,
        "depth": 1,
        "id": 9
    },{
        "name": "租赁",
        "value": 10,
        "category": 0 ,
        "depth": 1,
        "id": 10
    },{
        "name": "缴纳",
        "value": 10,
        "category": 0 ,
        "depth": 1,
        "id": 11
    },{
        "name": "租赁合同签订时间",
        "value": 43,
        "category": 0 ,
        "depth": 1,
        "id": 12
    },{
        "name": "合同",
        "value": 10,
        "category": 1 ,
        "depth": 2,
        "id": 13
    }
    ,{
        "name": "协议",
        "value": 10,
        "category": 1 ,
        "depth": 2,
        "id": 14
    },{
        "name": "签订",
        "value": 10,
        "category": 1 ,
        "depth": 2,
        "id": 15
    },{
        "name": "租赁期限",
        "value": 43,
        "category": 1 ,
        "depth": 2,
        "id": 16
    },{
        "name": "租期",
        "value": 10,
        "category": 1 ,
        "depth": 2,
        "id": 17
    },{
        "name": "期限",
        "value": 10,
        "category": 0 ,
        "depth": 2,
        "id": 18
    },{
        "name": "租赁期",
        "value": 10,
        "category": 0 ,
        "depth": 2,
        "id": 19
    },{
        "name": "房产建筑面积",
        "value": 43,
        "category": 1 ,
        "depth": 3,
        "id": 20
    },{
        "name": "面积",
        "value": 10,
        "category": 1 ,
        "depth": 3,
        "id": 21
    },{
        "name": "建筑",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 22
    },{
        "name": "房屋用途",
        "value": 43,
        "category": 0 ,
        "depth": 3,
        "id": 23
    },{
        "name": "商铺",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 24
    },{
        "name": "门面房",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 25
    },{
        "name": "厂房",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 26
    },{
        "name": "工业用地",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 27
    },{
        "name": "拖欠违约金",
        "value": 43,
        "category": 0 ,
        "depth": 3,
        "id": 28
    },{
        "name": "违约金",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 29
    },{
        "name": "逾期",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 30
    },{
        "name": "滞纳金",
        "value": 10,
        "category": 0 ,
        "depth": 3,
        "id": 31
    }
];
links =  [//节点之间连接
    {
        "source": 0,//起始节点，0表示第一个节点
        "target": 1,
        "weight": 1
    },
    {
        "source": 0,
        "target": 2
    },
    {
        "source": 3,//起始节点，0表示第一个节点
        "target": 4,
        "weight": 1
    },{
        "source": 3,
        "target": 5,
    },{
        "source": 6,
        "target": 7,
    },{
        "source": 6,
        "target": 8
    }
    ,{
        "source": 6,
        "target": 9
    },{
        "source": 6,
        "target": 10
    },{
        "source": 6,
        "target": 11
    },
    {
        "source": 12,
        "target": 13
    },{
        "source": 12,
        "target": 14
    },{
        "source": 12,
        "target": 15
    },{
        "source": 16,
        "target": 17
    },{
        "source": 16,
        "target": 18
    },{
        "source": 16,
        "target": 19
    },{
        "source": 16,
        "target": 10
    },{
        "source": 20,
        "target": 21
    },{
        "source": 20,
        "target": 22
    },{
        "source": 23,
        "target": 24
    },{
        "source": 23,
        "target": 25
    },{
        "source": 23,
        "target": 26
    },{
        "source": 23,
        "target": 27
    },{
        "source": 28,
        "target": 29
    },{
        "source": 28,
        "target": 30
    },{
        "source": 28,
        "target": 31
    },{
        "source": 0,
        "target": 3
    },{
        "source": 12,
        "target": 0
    },{
        "source": 12,
        "target": 3
    },{
        "source": 12,
        "target": 28
    },{
        "source": 12,
        "target": 16
    },{
        "source": 16,
        "target": 18
    },{
        "source": 26,
        "target": 29
    }
]
    for(var i=0; i<nodes.length; i++){
    	if(nodes[i].id == "0"){
    		nodes[i].itemStyle = {
    			normal: {
    				borderColor: '#000',
    				color:'blue',
    				label: {
		                show: true,
		            }
				}
    		}
    	}
    	else if(nodes[i].id == "22"){
    		nodes[i].itemStyle = {
    			normal: {
    				label: {
		                show: true,
		                textStyle:{
		                	color:'yellow'
		                }
		                
		            },
    			}
    		}
    	}
    	//22
    	nodes[i]["symbolSize"] = nodes[i].value *1.2;
    }
    console.log(nodes);
	// require(
	//     [
	//         'echarts',
	//         'echarts/chart/force' // 使用柱状图就加载bar模块，按需加载
	//     ],
option3 = {
    title: {
        x: 'right',
        y: 'bottom'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{b}'
    },
    toolbox: {
        show: true,
        feature: {
            restore: {show: true},
            magicType: {show: true, type: ['force', 'chord']},
            saveAsImage: {show: true}
        }
    },
    legend: {
        x: 'left',
        data: ['四级', '三级', '二级'],
        orient: 'left',
        x: 10,
        y: 10,
        textStyle: {
            fontSize: '14',
            color: '#fff'
        },
    },
    series: [
        {
            type: 'graph',
            name: "Graph tree",
            ribbonType: false,
            categories: [
                {
                    name: '四级'
                },
                {
                    name: '三级'
                },
                {
                    name: '二级'
                }
            ],
            itemStyle: {
                normal: {
                    label: {
                        show: true,
                        textStyle: {
                            color: '#fff'
                        }
                    },
                    nodeStyle: {
                        brushType: 'both',
                        borderColor: 'rgba(255,215,0,0.6)',
                        borderWidth: 1
                    }
                }
            },
            minRadius: constMinRadius,
            maxRadius: constMaxRadius,
            symbolSize: function (params) {
                console.log(params)
            },
            coolDown: 0.995,
            steps: 10,
            nodes: nodes,
            links: links,
            steps: 1
        }
    ]
}
