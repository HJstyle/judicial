dom = document.getElementById("container");
myChart = echarts.init(dom);
myChart.on('click', function (handler, context) {
    console.dir(handler);
    console.dir(context);
    //获取节点点击的数组序号
    var arrayIndex = handler.dataIndex;
    //获取数据
    var urlParam = responseData.data.date[arrayIndex];
});

app = {};
option = {
    backgroundColor: "#0b2838",
    legend: [{
        show: true,
        icon: "circle",
        right: 0,
        top: 0,
        width: 200,
        height: 400,
        backgroundColor: "#fff",
        orien: 'horizontal',
        data: [

            { name: '文档' },
            { name: 'level1项目' },
            { name: 'level2项目' },
            { name: 'level3项目' },
            { name: 'level4项目' },
            { name: '具体法律法规'}

        ]
    }],
    series: [{
        type: 'graph',
        layout: 'force',
        roam: true,
        draggable: false,
        categories: [
            { name: '文档' },
            { name: 'level1项目' },
            { name: 'level2项目' },
            { name: 'level3项目' },
            { name: 'level4项目' },
            { name: '具体法律法规' },
        ],
        data: [{
            name: "点击右侧菜单内选项查看更多视图",
            symbolSize: 300,
            value: 50,
            itemStyle: {
                color: "#faab0e"
            },
            label: {
                show: true,
                color: "#FFF",
                formatter: '{b}',
                fontSize: 23,
            },
        },
        ],
        links: [],
        force: {
            edgeLength: 60,
            repulsion: 20,
            gravity: 0.01,
            layoutAnimation: true
        },
    }]
};
myChart.setOption(option, true);
tables = [
    "event_level",
    "event_place",
    "event_aim",
    "event_resource",
    "event_rule"
]

tablesOther = [
    "突发事件",
    "风险区",
    "设施",
    "资源",
    "相关条例"
]

mapData = [
    [], [], [], [], []
]
mapLinks = [
    [], [], [], [], []
]
legendList = [
    [], [], [], [], []
]
menuList = []
docPointList = []
docLinkSet = {}
level1color = "#CD9B1D"
level2color = "#F4606C"
level3color = "#19CAAD"
level4color = "#EE9A00"
doccolor1 = "#D6D5B7"
rolecolor = "#EE9AE0"

changeData = function () {
    myChart.setOption(option, true);
}

var selectBox = new Vue({
    el: '#selectBox',
    data: {
        menu: [],
        doc: []
    },
    methods: {
        showPioint: function (code) {
            $(".flex-center").remove();
            clearInterval(interval)
            option.series[0].data = []
            option.series[0].links = []
            for (index in mapData) {
                for (i in mapData[index]) {
                    if (mapData[index][i].name == code) {
                        option.series[0].data.push(mapData[index][i])
                    }
                }

            }
            for (index in mapLinks) {
                for (i in mapLinks[index]) {
                    tmpCode = "x"
                    if (mapLinks[index][i].target == code) {
                        tmpCode = mapLinks[index][i].source
                    }

                    if (mapLinks[index][i].source == code) {
                        tmpCode = mapLinks[index][i].target

                    }

                    if (tmpCode != "x") {
                        console.log(tmpCode)
                        for (j in mapData) {
                            for (l in mapData[j]) {
                                if (mapData[j][l].name == tmpCode) {
                                    console.log(tmpCode)
                                    option.series[0].data.push(mapData[j][l])
                                    option.series[0].links.push(mapLinks[index][i])
                                }
                            }

                        }
                    }
                }


            }
            changeData();
        },
        showDoc: function (code, type) {
            $(".flex-center").remove();
            clearInterval(interval)
            option.series[0].data = []
            option.series[0].links = []
            for (index in docPointList) {
                if (docPointList[index].name == code) {
                    option.series[0].data.push(docPointList[index])
                }
            }
            for (index in docLinkSet[code][type]) {
                console.log(docLinkSet[code][type][index].target)
                for (j in mapData) {
                    for (l in mapData[j]) {
                        if (mapData[j][l].name == docLinkSet[code][type][index].target) {
                            option.series[0].data.push(mapData[j][l])
                            option.series[0].links.push(docLinkSet[code][type][index])
                        }
                    }

                }

            }
            if (docRoles[code] != null && type == "相关条例") {
                let tmp = {
                    name: "相关法律法规",
                    symbolSize: 30,
                    value: 80,
                    category: '文档',
                    itemStyle: {
                        color: doccolor1
                    },
                    label: {
                        show: true,
                        color: "#FFF",
                        formatter: "相关法律法规",
                        fontSize: 23,
                    },
                }
                option.series[0].data.push(tmp)
                for (index in docRoles[code]) {
                    let tmp = {
                        name: docRoles[code][index][0],
                        symbolSize: 20,
                        category: '具体法律法规',
                        itemStyle: {
                            color: level4color
                        },
                        label: {
                            show: true,
                            color: "#FFF",
                            formatter: docRoles[code][index][0],
                            fontSize: 10,
                        },
                    }
                    option.series[0].data.push(tmp)
                    
                    let tmpLink = {
                        source: docRoles[code][index][0],
                        target: docRoles[code][index][1],
                        value: 50,
                    }
                    
                    option.series[0].links.push(tmpLink)
                    tmpLink = {
                        source: docRoles[code][index][0],
                        target: "相关法律法规",
                        value: 50,
                    }
                    option.series[0].links.push(tmpLink)
                }

            }
            changeData();
        },

    },
    mounted() {
        that = this
        $.ajax({
            method: 'get',
            url: 'http://songbg.imwork.net:26513/zxGraph/getData',
            async: false,
            dataType: 'json',
            success: function (result) {
                docs = result.docs
                bigData = result
                for (index in docs) {
                    tmpDataItem = {
                        name: docs[index][0],
                        symbolSize: 30,
                        value: 80,
                        category: '文档',
                        itemStyle: {
                            color: doccolor1
                        },
                        label: {
                            show: true,
                            color: "#FFF",
                            formatter: docs[index][0],
                            fontSize: 23,
                        },
                    }
                    docPointList.push(tmpDataItem)
                    docLinkSet[docs[index][0]] = {}
                    for (i = 1; i < 6; i++) {
                        tmpDocLinks = JSON.parse(docs[index][i])
                        docLinkSet[docs[index][0]][tablesOther[i - 1]] = []
                        for (j in tmpDocLinks) {
                            tmpLinkItem = {
                                source: docs[index][0],
                                target: tmpDocLinks[j],
                                value: 50,
                            }
                            docLinkSet[docs[index][0]][tablesOther[i - 1]].push(tmpLinkItem)
                        }
                    }
                    tmpDocData = {
                        docName: docs[index][0],
                        items: tablesOther
                    }
                    docRoles[result.docs[index][0]] = JSON.parse(result.docs[index][6])
                    that.doc.push(tmpDocData)
                }
                for (index in tables) {
                    tmpListLevel1Data = {
                        code: tables[index],
                        context: tablesOther[index],
                        children: []
                    }
                    tmpType = result[tables[index]]
                    tmpDataItem = {
                        name: tables[index],
                        symbolSize: 55,
                        category: 'level1项目',
                        value: 50,
                        itemStyle: {
                            color: level1color
                        },
                        label: {
                            show: true,
                            color: "#FFF",
                            formatter: tablesOther[index],
                            fontSize: 18,
                        },
                    }
                    mapData[index].push(tmpDataItem)
                    for (i in tmpType['level1']) {
                        tmpListLevel2Data = {
                            code: tmpType['level1'][i][0],
                            context: tmpType['level1'][i][1],
                            children: []
                        }
                        tmpDataItem = {
                            name: tmpType['level1'][i][0],
                            symbolSize: 40,
                            category: 'level2项目',
                            value: 40,
                            itemStyle: {
                                color: level2color
                            },
                            label: {
                                show: true,
                                color: "#FFF",
                                formatter: tmpType['level1'][i][1],
                                fontSize: 18,
                            },
                        }
                        tmpLinkItem = {
                            source: tables[index],
                            target: tmpType['level1'][i][0],
                            value: 50,
                        }
                        mapData[index].push(tmpDataItem)
                        mapLinks[index].push(tmpLinkItem)
                        tmpListLevel1Data.children.push(tmpListLevel2Data)
                    }
                    for (i in tmpType['level2']) {
                        tmpListLevel3Data = {
                            code: tmpType['level2'][i][0],
                            context: tmpType['level2'][i][1],
                            children: []
                        }
                        tmpDataItem = {
                            name: tmpType['level2'][i][0],
                            value: 25,
                            symbolSize: 20,
                            category: 'level3项目',
                            itemStyle: {
                                color: level3color
                            },
                            label: {
                                show: true,
                                color: "#FFF",
                                formatter: tmpType['level2'][i][1],
                                fontSize: 18,
                            },

                        }
                        tmpLinkItem = {
                            source: tmpType['level2'][i][3],
                            target: tmpType['level2'][i][0],
                            value: 25,
                        }
                        mapData[index].push(tmpDataItem)
                        mapLinks[index].push(tmpLinkItem)
                        for (j in tmpListLevel1Data.children) {
                            if (tmpType['level2'][i][3] == tmpListLevel1Data.children[j].code) {
                                tmpListLevel1Data.children[j].children.push(tmpListLevel3Data)
                                break;
                            }
                        }
                    }
                    for (i in tmpType['level3']) {
                        tmpListLevel4Data = {
                            code: tmpType['level3'][i][0],
                            context: tmpType['level3'][i][1],
                        }
                        tmpDataItem = {
                            name: tmpType['level3'][i][0],
                            value: 13,
                            symbolSize: 20,
                            category: 'level4项目',
                            itemStyle: {
                                color: level4color
                            },
                            label: {
                                show: true,
                                color: "#FFF",
                                formatter: tmpType['level3'][i][1],
                                fontSize: 18,
                            },
                        }
                        tmpLinkItem = {
                            source: tmpType['level3'][i][3],
                            target: tmpType['level3'][i][0],
                            value: 13,
                        }
                        mapData[index].push(tmpDataItem)
                        mapLinks[index].push(tmpLinkItem)
                        for (j in tmpListLevel1Data.children) {
                            for (l in tmpListLevel1Data.children[j].children) {
                                if (tmpType['level3'][i][3] == tmpListLevel1Data.children[j].children[l].code) {
                                    tmpListLevel1Data.children[j].children[l].children.push(tmpListLevel4Data)
                                    break;
                                }
                            }
                        }

                    }
                    menuList.push(tmpListLevel1Data)
                }
                that.menu = menuList
            },
            fali: function (res) {
                console.log(2)
            }
        });
        $(document).ready(function () {
            function randomHexColor() { //随机生成十六进制颜色
                var hex = Math.floor(Math.random() * 16777216).toString(16); //生成ffffff以内16进制数
                while (hex.length < 6) { //while循环判断hex位数，少于6位前面加0凑够6位
                    hex = '0' + hex;
                }
                return '#' + hex; //返回‘#'开头16进制颜色
            }
            var percentage = 0;
            loadDocName = docPointList[Math.floor((Math.random() * docPointList.length))].name
            option.series[0].data.push(
                {
                    name: "预备加载关联词",
                    symbolSize: 100,
                    value: 50,
                    itemStyle: {
                        color: randomHexColor()
                    },
                    label: {
                        show: true,
                        color: "#FFF",
                        formatter: '{b}',
                        fontSize: 23,
                    },
                }
            )
            option.series[0].data = []
            interval = setInterval(function () {

                $('h3').text(loadDocName + "解析中");
                if (percentage < 100) {
                    percentage++;
                    var widthTemp = (percentage / 10).toFixed(1) + '%';
                    $('#progressBar').css('width', widthTemp);
                    $('#progressBar').text(widthTemp);
                    loadWord = bigData['event_level']['level3'][Math.floor((Math.random() * bigData['event_level']['level3'].length))][1]
                    $('h3').text(loadDocName + "---检索相关关系---" + loadWord);

                    tmpword = {
                        name: loadWord,
                        symbolSize: 100,
                        value: 50,
                        itemStyle: {
                            color: randomHexColor()
                        },
                        label: {
                            show: true,
                            color: "#FFF",
                            formatter: '{b}',
                            fontSize: 23,
                        },
                    }
                    option.series[0].data.push(tmpword)
                    changeData();
                } else {
                    loadDocName = docPointList[Math.floor((Math.random() * docPointList.length))].name
                    percentage = 0
                }
            }, 2000);
        });
        $(document).ready(function () {
            function randomHexColor() { //随机生成十六进制颜色
                var hex = Math.floor(Math.random() * 16777216).toString(16); //生成ffffff以内16进制数
                while (hex.length < 6) { //while循环判断hex位数，少于6位前面加0凑够6位
                    hex = '0' + hex;
                }
                return '#' + hex; //返回‘#'开头16进制颜色
            }
            $(".close_menu").each(function () {
                $(this).siblings("ul").hide();
            });
            $(".ontree").each(function () {
                $(this).parents("ul").show();
                $(this).parents("ul").siblings().addClass("open_menu").removeClass("close_menu");
            });
            $(document).on("click", ".close_menu span", function () {
                $(this).parent().addClass("open_menu").removeClass("close_menu");
                $(this).parent().siblings("ul").fadeIn();
                treewidth();
            });
            $(document).on("click", ".open_menu span", function () {
                $(this).parent().parent().find(".open_menu").addClass("close_menu").removeClass("open_menu");
                $(this).parent().parent().find("ul").hide();
                treewidth();
            });
            $(document).on("click", ".tree a", function () {
                $(".ontree").removeClass("ontree");
                $(this).addClass("ontree");
            });
            $(document).on("click", "#showStart", function () {
                if ($(".flex-center").html() != undefined) {
                    return false
                }

                $("body").append(
                    '<div class="flex-center"><h3 style="color: #fff;">系统加载中，请稍等...</h3><span class="container"><span id="progressBar" class="h-100P bar"></span></span></div>'
                );
                var percentage = 0;
            loadDocName = docPointList[Math.floor((Math.random() * docPointList.length))].name
            option.series[0].data.push(
                {
                    name: "预备加载关联词",
                    symbolSize: 100,
                    value: 50,
                    itemStyle: {
                        color: randomHexColor()
                    },
                    label: {
                        show: true,
                        color: "#FFF",
                        formatter: '{b}',
                        fontSize: 23,
                    },
                }
            )
            option.series[0].data = []
            interval = setInterval(function () {

                $('h3').text(loadDocName + "解析中");
                if (percentage < 100) {
                    percentage++;
                    var widthTemp = (percentage / 10).toFixed(1) + '%';
                    $('#progressBar').css('width', widthTemp);
                    $('#progressBar').text(widthTemp);
                    loadWord = bigData['event_level']['level3'][Math.floor((Math.random() * bigData['event_level']['level3'].length))][1]
                    $('h3').text(loadDocName + "---检索相关关系---" + loadWord);

                    tmpword = {
                        name: loadWord,
                        symbolSize: 100,
                        value: 50,
                        itemStyle: {
                            color: randomHexColor()
                        },
                        label: {
                            show: true,
                            color: "#FFF",
                            formatter: '{b}',
                            fontSize: 23,
                        },
                    }
                    option.series[0].data.push(tmpword)
                    changeData();
                } else {
                    loadDocName = docPointList[Math.floor((Math.random() * docPointList.length))].name
                    percentage = 0
                }
            }, 2000);

            });

            treewidth();
            function treewidth() {
                var items = new Array;
                var parents = new Array;
                var text_num = 0, parent_num = 0;
                $(".tree a").each(function () {
                    if ($(this).is(":hidden") == false) {
                        items.push($(this).text().length);
                        parents.push($(this).parents("ul").length);
                    }
                });
                //document.title="最多字数："+Math.max.apply(null, items)+",最大层数："+Math.max.apply(null, parents);
                text_num = Math.max.apply(null, items);
                parent_num = Math.max.apply(null, parents);
                $(".tree").width(parent_num * 20 + text_num * 14 + 44);
                scrollsXY(".scrollXY");
            }
        });
        function scrollsXY(box) {		//XY轴滚动最终版
            var pointX = 0, left = 0;
            $(box).each(function () {
                var box = $(this);
                var W = box.width() - 18;
                var cententW = box.children().width();
                var btnW = W / cententW * W;
                var scrollX = '<div class="scrollX_box" boxW="' + W + '" cententW="' + cententW + '" move="false">';
                scrollX += '<div class="scrollX_btn" lefts="0">';
                scrollX += '<div style="background-color:#696979;position:absolute;width:100%;top:6px;height:6px;border-radius:4px"></div>';
                scrollX += '</div></div>';
                box.parent().css({ "position": "relative" });
                box.siblings(".scrollX_box").remove();
                box.before(scrollX);
                if (W / cententW < 1) {
                    box.siblings(".scrollX_box").children(".scrollX_btn").show();
                } else {
                    box.siblings(".scrollX_box").children(".scrollX_btn").hide();
                }
                box.siblings(".scrollX_box").css({
                    "width": W,
                    "position": "absolute",
                    "bottom": 0,
                    "left": 0,
                    "z-index": 0,
                    "background-color": "#fff",
                    "height": "18px",
                    "border-right": "solid 18px #fff"
                });
                box.siblings(".scrollX_box").children(".scrollX_btn").css({
                    "width": btnW,
                    "position": "relative",
                    "cursor": "pointer",
                    "height": "18px"
                });
                $(".scrollX_btn").hover(function () {
                    $(this).children().css({
                        "background-color": "#9797ac",
                    });
                }, function () {
                    $(this).children().css({
                        "background-color": "#696979",
                    });
                    move = $(this).parent().attr("move", "false");
                });
                box.scroll(function () {
                    var X = $(this).scrollLeft();
                    var boxW = $(this).siblings(".scrollX_box").attr("boxW")
                    var cententW = $(this).siblings(".scrollX_box").attr("cententW");
                    $(this).siblings(".scrollX_box").children(".scrollX_btn").css({
                        "margin-left": X / cententW * boxW
                    });
                    $(this).siblings(".scrollX_box").children(".scrollX_btn").attr("lefts", X / cententW * boxW);
                });
                $(".scrollX_btn").mousedown(function (e) {
                    pointX = e.pageX;	//这里可以得到鼠标Y坐标
                    left = $(this).attr("lefts") * 1;
                    $(this).parent().attr("move", "true");
                    $(this).focus();
                });
                $(".scrollX_btn").mousemove(function (e) {
                    e.stopPropagation();
                    if ($(this).parent().attr("move") == "true") {
                        var moveX = e.pageX - pointX;
                        var boxW = $(this).parent().attr("boxW")
                        var cententW = $(this).parent().attr("cententW");
                        var btnW = boxW / cententW * boxW;
                        //$(this).siblings().unbind();
                        $(this).css({
                            "margin-left": left + moveX
                        });
                        $(this).attr("lefts", left + moveX);
                        $(this).parent().siblings().scrollLeft((left + moveX) / boxW * cententW);
                        if (left + moveX > boxW - btnW) {
                            $(this).css({
                                "margin-left": boxW - btnW
                            });
                            $(this).attr("lefts", boxW - btnW);
                        } else if (left + moveX < 0) {
                            $(this).css({
                                "margin-left": 0
                            });
                            $(this).attr("lefts", 0);
                        }
                    }
                });
                $(".scrollX_btn").mouseup(function (e) {
                    $(this).parent().attr("move", "false");
                    $(this).focus();
                });
            });
            var pointY = 0, top = 0;
            $(box).each(function () {
                var box = $(this);
                var H = box.height() - 18;
                var cententH = box.children().height();
                var btnH = H / cententH * H;
                var go_top = box.scrollTop() / cententH * H;
                var scrollY = '<div class="scroll_box" boxH="' + H + '" cententH="' + cententH + '" move="false">';
                scrollY += '<div class="scroll_btn" tops="' + go_top + '">';
                scrollY += '<div style="background-color:#696979;position:absolute;width:6px;left:6px;height:100%;border-radius:4px"></div>';
                scrollY += '</div></div>';
                box.parent().css({ "position": "relative" });
                box.siblings(".scroll_box").remove();
                box.before(scrollY);
                if (H / cententH < 1) {
                    box.siblings(".scroll_box").children(".scroll_btn").show();
                } else {
                    box.siblings(".scroll_box").children(".scroll_btn").hide();
                }
                box.siblings(".scroll_box").css({
                    "width": "18px",
                    "position": "absolute",
                    "top": 0,
                    "right": 0,
                    "z-index": 0,
                    "background-color": "#fff",
                    "height": H,
                    "border-bottom": "solid 18px #fff"
                });
                box.siblings(".scroll_box").children(".scroll_btn").css({
                    "width": "100%",
                    "position": "relative",
                    "cursor": "pointer",
                    "height": btnH,
                    "margin-top": go_top
                });
                $(".scroll_btn").hover(function () {
                    $(this).children().css({
                        "background-color": "#9797ac",
                    });
                }, function () {
                    $(this).children().css({
                        "background-color": "#696979",
                    });
                    move = $(this).parent().attr("move", "false");
                    addscroll(box);
                });
                addscroll(box);
                $(".scroll_btn").mousedown(function (e) {
                    pointY = e.pageY;	//这里可以得到鼠标Y坐标
                    top = $(this).attr("tops") * 1;
                    $(this).parent().attr("move", "true");
                    $(this).focus();
                });
                $(".scroll_btn").mousemove(function (e) {
                    e.stopPropagation();
                    if ($(this).parent().attr("move") == "true") {
                        var moveY = e.pageY - pointY;
                        var boxH = $(this).parent().attr("boxH")
                        var cententH = $(this).parent().attr("cententH");
                        var btnH = boxH / cententH * boxH;
                        $(this).siblings().unbind();
                        $(this).css({
                            "margin-top": top + moveY
                        });
                        $(this).attr("tops", top + moveY);
                        $(this).parent().siblings().scrollTop((top + moveY) / boxH * cententH);
                        if (top + moveY > boxH - btnH) {
                            $(this).css({
                                "margin-top": boxH - btnH
                            });
                            $(this).attr("tops", boxH - btnH);
                        } else if (top + moveY < 0) {
                            $(this).css({
                                "margin-top": 0
                            });
                            $(this).attr("tops", 0);
                        }
                    }
                });
                $(".scroll_btn").mouseup(function (e) {
                    $(this).parent().attr("move", "false")
                    addscroll(box);
                });
            });

            function addscroll(box) {
                box.scroll(function () {
                    var Y = $(this).scrollTop();
                    var boxH = $(this).siblings(".scroll_box").attr("boxH")
                    var cententH = $(this).siblings(".scroll_box").attr("cententH");
                    $(this).siblings(".scroll_box").children(".scroll_btn").css({
                        "margin-top": Y / cententH * boxH
                    });
                    $(this).siblings(".scroll_box").children(".scroll_btn").attr("tops", Y / cententH * boxH);
                });
            }
        }
    }

})
