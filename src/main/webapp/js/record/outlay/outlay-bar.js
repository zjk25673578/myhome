var dom = document.getElementById("bar");
var myChart = echarts.init(dom);
// app.title = '坐标轴刻度与标签对齐';

option = {
    title: {
        text: '柱状图',
        subtext: '纯属虚构',
        x: 'center' // 标题位置
    },
    color: ['#3398DB', '#DB2F1F', '#fff000'], // 柱子的背景色
    tooltip: {
        trigger: 'axis', // 坐标轴(axis)触发有效, item是指在柱子上触发, axis是指在轴上触发
        axisPointer: {  // 坐标轴指示器
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    toolbox: {
        show: false,
        feature: {
            dataView: {
                show: true,
                readOnly: true
            },
            magicType: {
                show: true, type: ['line', 'bar']
            },
            restore: {
                show: true
            },
            // 注意，自定义的工具名字，只能以 my 开头，例如下例中的 myTool1，myTool2：
            myTool: {
                show: true,
                title: '自定义扩展方法',
                icon: 'image://http://echarts.baidu.com/images/favicon.png',
                onclick: function () {
                    alert(1);
                }
            },
            saveAsImage: {
                show: true
            }
        }
    },
    grid: {
        left: '3%', // 左边距
        right: '4%', // 右边距
        bottom: '3%', // 下边距
        containLabel: true
    },
    // X轴
    xAxis: [
        {
            type: 'category',
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    // Y轴
    yAxis: [
        {
            type: 'value'
        }
    ],
    series: [
        {
            name: '直接访问',
            type: 'bar',
            barWidth: '10%', // 柱子宽, 占每个模块的百分比, 或者直接写number
            data: [10, 52, 200, 334, 390, 330, 220]
        },
        {
            name: '电话咨询',
            type: 'bar',
            barWidth: '10%', // 柱子宽, 占每个模块的百分比, 或者直接写number
            data: [101, 522, 20, 33, 256, 333, 126]
        },
        {
            name: '进店浏览',
            type: 'bar',
            barWidth: '10%', // 柱子宽, 占每个模块的百分比, 或者直接写number
            data: [11, 52, 2, 3, 26, 33, 126]
        }
    ]
};
if (option && typeof option === "object") {
    myChart.setOption(option, true);
    window.onresize = function () {
        myChart.resize();
    }
}