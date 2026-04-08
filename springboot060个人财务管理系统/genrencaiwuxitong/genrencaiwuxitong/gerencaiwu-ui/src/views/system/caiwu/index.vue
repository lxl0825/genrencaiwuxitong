<template>
  <div>
    <v-chart
      class="chart"
      :option="option"
      style="width: 100%; height: 400px"
    />
    <v-chart
      class="chart2"
      :option="option2"
      style="width: 100%; height: 400px"
    />
    <v-chart
      class="chart3"
      :option="option3"
      style="width: 100%; height: 400px"
    />
  </div>
</template>

<script>
// import { use } from "echarts/core";
// import { CanvasRenderer } from "echarts/renderers";
// import { PieChart } from "echarts/charts";
// import {
//   TitleComponent,
//   TooltipComponent,
//   LegendComponent,
// } from "echarts/components";
import VChart, { THEME_KEY } from "vue-echarts";
import "echarts";
import { listFenlei } from "@/api/system/fenlei";
import { gettongji } from "@/api/system/caiwu";

// use([
//   CanvasRenderer,
//   PieChart,
//   TitleComponent,
//   TooltipComponent,
//   LegendComponent,
// ]);

export default {
  name: "caiwu",
  components: {
    VChart,
  },
  provide: {
    [THEME_KEY]: "dark",
  },
  data() {
    return {
      fenleiList: [],
      countAmount: {
        fenleiList: [],
        shouruList: [],
        zhichuMap: [],
      },
      noPage: {
        pageNum: 1,
        pageSize: 999999,
        name: null,
        type: null,
        payAmount: null,
        payWay: null,
        time: null,
        username: null,
        userId: null,
      },
    };
  },
  computed: {
    option() {
      return {
        title: {
          text: "支出报表",
          left: "center",
        },
        tooltip: {
          trigger: "item",
          formatter: "{a} <br/>{b} : {c} ({d}%)",
        },
        legend: {
          orient: "vertical",
          left: "left",
          data: this.fenleiList.map((item) => item.name),
        },
        series: [
          {
            name: "支出类型",
            type: "pie",
            radius: "55%",
            center: ["50%", "60%"],
            data: this.countAmount.zhichuMap,
            emphasis: {
              itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: "rgba(0, 0, 0, 0.5)",
              },
            },
          },
        ],
      };
    },
    option2() {
      return {
        title: {
          text: "收入报表",
          left: "center",
        },
        tooltip: {
          trigger: "item",
          formatter: "{a} <br/>{b} : {c}",
        },
        xAxis: {
          data: this.countAmount.fenleiList,
        },
        yAxis: {},
        series: [
          {
            name: "收入类型",
            type: "bar",
            data: this.countAmount.shouruList,
          },
        ],
      };
    },
    option3() {
      return {
        title: {
          text: "债务报表",
          left: "center",
        },
        tooltip: {
          trigger: "item",
          formatter: "{a} <br/>{b} : {c} ({d}%)",
        },
        series: [
          {
            name: "债务类型",
            radius: "55%",
            center: ["50%", "60%"],
            type: "pie",
            data: this.countAmount.zhaiwuMap,
            emphasis: {
              itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: "rgba(0, 0, 0, 0.5)",
              },
            }
          },
        ],
      };
    },
  },
  created() {
    this.getFenleiList();
    this.getCountAmount();
  },
  methods: {
    getFenleiList() {
      listFenlei(this.noPage).then((response) => {
        this.fenleiList = response.rows;
      });
    },
    getCountAmount() {
      gettongji().then((response) => {
        this.countAmount = response.data;
        console.log(this.countAmount.zhichuMap);
      });
    },
  },
};
</script>

<style scoped></style>
