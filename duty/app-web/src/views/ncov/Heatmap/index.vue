<template>
  <div class="heatmap_legend">
    <div class="tuli">
      <span>图例</span>
      <i></i>
    </div>
    <div style="margin: 4px; overflow: hidden;">
      <div ref="legend" class="legend_color" style="background-color: rgb(255, 255, 255);">
        <canvas  ref="legendCanvas"></canvas>
      </div>
      <div class="legend_text" style="background-color: rgb(255, 255, 255, 0);">
        <div style="margin-left: 5px;">>50人</div>
        <div style="position: absolute; bottom: 0px; margin-left: 5px;">0人</div>
      </div>
    </div>
  </div>
</template>
<script>

import { mapGetters } from 'vuex';
import { clean_alltype } from '../../../util/common3d'
export default {
  data() {
    return {
      heatMap: null
    };
  },
  computed: {
    ...mapGetters([
     'currentArea'
    ])
  },
  mounted() {
    //修改根下的区域
    var me=this;
    this.$nextTick(function() {
      var json=undefined;
      const cityCoordsJsonPath ="static/json/china/cities.json";

      let zInst1 = config.zInst1;
      var url = cityCoordsJsonPath/*json文件url，本地的就写本地的位置，如果是服务器的就写服务器的路径*/
      var request = new XMLHttpRequest();
      
      request.open("get", url);/*设置请求方法与路径*/
      request.send(null);/*不发送数据到服务器*/
      request.onload = function () {/*XHR对象获取到返回信息后执行*/
        if (request.status == 200) {/*返回状态为200，即为数据获取成功*/
          json= JSON.parse(request.responseText);
          var data_json={
            "x":undefined,
            "y":undefined,
            "value":undefined
          }
          var arrobjs=[];
          me.$ds.loadCitiesData(undefined).then(res => {
            for(var i=0;i<json.features.length;i++){
              var name=json.features[i].properties.NAME;
              for(var j=0;j<res.length;j++)
              {
                if(res[j].name==name)
                {
                  data_json.x=json.features[i].geometry.coordinates[0];
                  data_json.y=json.features[i].geometry.coordinates[1];
                  data_json.value=res[j].confirmedCount;
                  arrobjs.push(data_json);
                }
                data_json={
                  "x":undefined,
                  "y":undefined,
                  "value":undefined
                }
              }
              }
            let bounds = {
              west: 73.66,
              east: 135.05,
              south: 3.86,
              north: 53.55
              };
            this.heatMap = CesiumHeatmap.create(
              zInst1.viewer, // your cesium viewer
              bounds,// bounds for heatmap layer
            );
            let valueMin = 0;
            let valueMax = 100;
            this.heatMap.setWGS84Data(valueMin, valueMax, arrobjs);
            var entities=zInst1.viewer.entities.values;
            console.log(entities);
            entities.map(entity =>{
              console.log(entity.name);
            })
            // for(var i=0;i<entities._entities.length;i++)
            // {
            //     var pname=entities._entities[i]._name;
            //    console(pname);
            // }
          });
        }
      }

    })

    if (this.$refs.legendCanvas instanceof HTMLCanvasElement) {
      const canvas = this.$refs.legendCanvas;
      canvas.width = 20;
      canvas.height = 100;
      var ctx = canvas.getContext("2d");

      var gradient = ctx.createLinearGradient(0, 100, 0, 0);
      // gradient.addColorStop(0,"green");
      // gradient.addColorStop(1,"white");

      /**
       * @type { [number, string][] }
       */
      const gradientConfig = [
        [0, "rgba(0, 255, 0, 0.0)"],
        [0.05, "rgba(0, 255, 0, 0.3)"],
        [0.5, "rgba(255, 255, 0, 0.5)"],
        [1, "red"]
      ];
      gradientConfig.forEach(gc => {
        gradient.addColorStop(gc[0], gc[1]);
      });

      ctx.fillStyle = gradient;
      ctx.fillRect(0, 0, 20, 100);
    }
  },
  destroyed () {
    //const canvas = this.$refs.legendCanvas;
    clean_alltype("heatmap", "model");
  },
};

</script>
<style scoped>
.heatmap_legend {
  position: absolute;
  right: 16%;
  /* right: calc(16% + 50px); */
  bottom: 286px;
  width: 100px;
  background: url(../img/tuli_bg.png) no-repeat;
  background-size: 100% 100%;
}
.tuli {
  display: inline-block;
  line-height: 2px;
}
.tuli span {
  display: inline-block;
  color: #00ffff;
  font-size: 16px;
  padding-left: 8px;
  margin-top: 10px;
}
.tuli i {
  display: inline-block;
  width: 70px;
  height: 10px;
  background: url(../img/tuli.png) no-repeat;
  background-size: contain;
}
.legend_color {
  width: 20px;
  height: 100px;
  float: left;
  margin: 0px;
  border-radius: 0px;
}
.legend_text {
  width: 70px;
  height: 100px;
  float: left;
  margin: 0px;
  border-radius: 0px;
  color: white;
  font-size: 14px;
}
</style>
