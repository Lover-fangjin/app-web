<template>
  <div class="fatures-wrap">
    <el-tooltip effect="dark" content="项目范围" placement="left-start">
      <div @click="onFuweiClick()">
        <PublicSquare :imgUrl="fuwei"></PublicSquare>
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" :content="online ? '离线底图' : '线上底图'" placement="left-start">
      <div @click="onQieHuanClick()">
        <PublicSquare :imgUrl="qiehuan"></PublicSquare>
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" :content="isFullscreen ? '全屏放大' : '退出全屏'" placement="left-start">
      <div @click="fullScreen()">
        <PublicSquare :imgUrl="quanping"></PublicSquare>
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="顶视" placement="left-start">
      <div @click="onTop()">
        <PublicSquare imgUrl="static/images/duty/dinshis.png"></PublicSquare>
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="透视" placement="left-start">
      <div @click="onOverlook()">
        <PublicSquare imgUrl="static/images/duty/fushis.png"></PublicSquare>
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="盘旋" placement="left-start">
      <div @click="onEncircle()">
        <PublicSquare imgUrl="static/images/duty/panxuans.png"></PublicSquare>
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="环视" placement="left-start">
      <div @click="onLookAround()">
        <PublicSquare imgUrl="static/images/duty/huanshis.png"></PublicSquare>
      </div>
    </el-tooltip>
  </div>
</template>

<script>
  import { mapGetters } from 'vuex';
  import PublicSquare from '../../components/publicSquare/index';
  import screenfull from 'screenfull';
import { topViewer, overlookViewer } from '../../../../util/common3d';

  export default {
    components: {
      PublicSquare
    },
    data () {
      return {
        fuwei:'static/images/duty/fuwei.png',
        qiehuan:'static/images/duty/qiehuan.png',
        quanping:'static/images/duty/quanping.png',
        online:true,
        isFullscreen: true,
      };
    }, 
    mounted() {
      let me = this;
      me.$nextTick(() => {})
    },
    methods: {
      // 顶视
      onTop(){
        topViewer();
      },
      // 透视
      onOverlook(){
        overlookViewer();
      },
      // 盘旋
      onEncircle(){
        config.zInst1.camOper.spiral(20, null, null, function(tof) { }, null);
      },
      // 环视
      onLookAround(){
        config.zInst1.camOper.lookAround(20, function(tof) { console.log('透视: ',tof) }, null);
      },
      onFuweiClick() {
        let viewer=config.zInst1.viewer;
        let _entities = this.$root.areaEntities;
        if(_entities !== null){
          viewer.flyTo(_entities.values, {
            duration: 3,
            offset: {
              heading: Cesium.Math.toRadians(0.0),
              pitch: Cesium.Math.toRadians(-90)
            }
          });
        }
        // var promise = Cesium.GeoJsonDataSource.load( "static/json/duty/beizangcun.json" );
        // promise.then(function(dataSource) {
        //     viewer.dataSources.add(dataSource);
        //     viewer.flyTo(dataSource.entities.values, {
        //         duration: 2,
        //         offset: {
        //             heading: Cesium.Math.toRadians(0.0),
        //             pitch: Cesium.Math.toRadians(-90)
        //         }
        //     });
        //     var entities = dataSource.entities.values;
        //     for (var i = 0; i < entities.length; i++) {
        //         var entity = entities[i];
        //         entity.polygon.outline = false;
        //         entity.polygon.outlineWidth = 0;
        //         entity.polygon.outlineColor = Cesium.Color.BLUE;
        //         entity.polygon.material = new Cesium.Color(76 / 255, 171 / 255, 206 / 255, 0);
        //     }
        // });
      },
      onQieHuanClick(){
        config.zInst1.objectManager.delObj('BASEMAP', 'BASEMAP');
        if(this.online){
          let tileUrl = '/static/datas/beijingyingxiang/{z}/{x}_{y}.png';
          config.zInst1.objectManager.addImageryLayer('BASEMAP', 'BASEMAP', ZGLobe.Constants.ImageryType.Template, tileUrl, {zindex: 100});
          this.online=false;
        } else {
          // var tileUrl = 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}'
          var tileUrl = "http://mt1.google.cn/vt/lyrs=s&hl=zh-CN&x={x}&y={y}&z={z}&s=Gali";
          let img = config.zInst1.objectManager.addImageryLayer('BASEMAP', 'BASEMAP', ZGLobe.Constants.ImageryType.Template, tileUrl, {zindex: 100});
          img.brightness = 0.25;
          this.online=true;
        }
      },
      fullScreen(){
        if(this.isFullscreen)
        {
          var el = document.documentElement;
          var rfs = el.requestFullScreen || el.webkitRequestFullScreen || el.mozRequestFullScreen || el.msRequestFullScreen;
          this.isFullscreen=false;
        }
        else
        {
          var el = document;
          var rfs = el.cancelFullScreen || el.webkitCancelFullScreen || el.mozCancelFullScreen || el.exitFullScreen;
          this.isFullscreen=true;
        }
        //typeof rfs != "undefined" && rfs
        if (rfs) {
          rfs.call(el);
        }
        else if (typeof window.ActiveXObject !== "undefined") {
          //for IE，这里其实就是模拟了按下键盘的F11，使浏览器全屏
        var wscript = new ActiveXObject("WScript.Shell");
        if (wscript != null) {
          wscript.SendKeys("{F11}");
        }
      }
    }
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/style/ztman.scss";
.fatures-wrap{
    position: absolute;
    top:0px;
    // padding:10px 5px;
    left: calc( 50% - 320px);
}
</style>
