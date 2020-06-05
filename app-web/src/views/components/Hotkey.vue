<template>
  <div class="fatures-wrap">
    <el-tooltip effect="dark" content="项目范围" placement="left-start">
      <div @click="onFuweiClick()">
        <Square imgUrl="static/images/hotkey/fuwei.png" />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" :content="isFullscreen ? '全屏显示' : '退出全屏'" placement="left-start">
      <div @click="fullScreen()">
        <Square :imgUrl="isFullscreen ? 'static/images/hotkey/quanping.png' : 'static/images/hotkey/tuichu.png'"  />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" :content="online ? '电子地图' : '影像地图'" placement="left-start">
      <div @click="onQieHuanClick()">
        <Square imgUrl="static/images/hotkey/qiehuan.png" />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="POI列表" placement="left-start">
      <PointList />
    </el-tooltip>

    <el-tooltip effect="dark" content="顶视" placement="left-start">
      <div @click="onTop()">
        <Square imgUrl="static/images/hotkey/dinshis.png" />
      </div>
    </el-tooltip>
    
    <el-tooltip effect="dark" content="透视" placement="left-start">
      <div @click="onOverlook()">
        <Square imgUrl="static/images/hotkey/fushis.png" />
      </div>
    </el-tooltip>
  </div>
</template>

<script>
  import { mapGetters } from 'vuex';
  import screenfull from 'screenfull';
  import { topViewer, overlookViewer, removeEntityByType, drawEntityPoiSingle, goAngleView } from '@/util/common3d.js';
  import Square from './Square.vue'
  import PointList from './PointList.vue'

  export default {
    components: {
        Square,
        PointList
    },
    data () {
      return {
        online: false,
        isFullscreen: true,
        dark: false
      };
    }, 
    mounted() {
      let me = this;
      me.$nextTick(() => {})

      // 括号里的参数时用来控制经过多久开始变化的！
      // $("#to2d").click(function () {
      //     viewer.scene.morphTo2D(1);//二维
      // });
      // $("#to3d").click(function () {
      //     viewer.scene.morphTo3D(1);//三维
      // });
      // $("#toGLB").click(function () {
      //     viewer.scene.morphToColumbusView(1);//哥伦布视图
      // });
    },
    methods: {
      // 顶视
      onTop(){
        topViewer(this.$root.viewer);
      },
      // 透视
      onOverlook(){
        overlookViewer(this.$root.viewer);
      },
      onFuweiClick() {
        let _viewer = this.$root.viewer;
        // let _entities = this.$root.areaEntities;
        // if(_entities !== null){
        //   _viewer.flyTo(_entities.values, {
        //     duration: 3,
        //     offset: {
        //       heading: Cesium.Math.toRadians(0.0),
        //       pitch: Cesium.Math.toRadians(-90)
        //     }
        //   });
        // }
        let info = { ...config.startViewer.poisiton, ...config.startViewer.euler };
        goAngleView(_viewer, info);
      },
      onQieHuanClick(){
        let _viewer = this.$root.viewer;
        _viewer.imageryLayers.remove(_viewer.imageryLayers.get(0))
        if(this.online){
          let img= _viewer.imageryLayers.addImageryProvider(
            new Cesium.UrlTemplateImageryProvider({
              url: "http://webrd02.is.autonavi.com/appmaptile?lang=zh_cn&size=1&scale=1&style=8&x={x}&y={y}&z={z}",
              baseLayerPicker : false
            })
          );
          this.online=false;
        } else {
          let img= _viewer.imageryLayers.addImageryProvider(
            new Cesium.ArcGisMapServerImageryProvider({
                url : 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetPurplishBlue/MapServer'
                ,baseLayerPicker : false
            })
          );
          img.brightness = 3;
          this.online=true;
        }

        let me = this;
        let _themes = me.dark ? "light" : "dark"
        config.chart.lineColor = config.chart.labelColor = me.dark ? '#19233c' : '#ffffff';
        window.document.documentElement.setAttribute( "data-theme", _themes );
        me.globalEvent.trigger({type:this.eventType.THEMESCHANGE, name: _themes});
        me.dark = !me.dark;
      },
      fullScreen(){
        let me = this;
        if(this.isFullscreen) {
          var el = document.documentElement;
          var rfs = el.requestFullScreen || el.webkitRequestFullScreen || el.mozRequestFullScreen || el.msRequestFullScreen;
          this.isFullscreen=false;
        } else {
          var el = document;
          var rfs = el.cancelFullScreen || el.webkitCancelFullScreen || el.mozCancelFullScreen || el.exitFullScreen;
          this.isFullscreen=true;
        }
        
        if (rfs) {
          rfs.call(el);
        } else if (typeof window.ActiveXObject !== "undefined") {
          //for IE，这里其实就是模拟了按下键盘的F11，使浏览器全屏
          var wscript = new ActiveXObject("WScript.Shell");
          if (wscript != null) {
            wscript.SendKeys("{F11}");
          }
        }
      },
      toggleTheme() {
      }
    },
    destroyed() {
    },
  };
</script>

<style scoped lang="scss">
@import "@/assets/style/index.scss";
.feacture{
  // background: $hotkey-color;
  // border: 1px solid $duty-border;
  @include background_color("hotkey-background-color");
  @include border_color("panel-border-color");
  width: 35px;
  height: 35px;
  border-radius: 5px;
  line-height: 35px;
  margin-bottom: 10px;
  cursor: pointer;
  img{
    vertical-align: middle;
    display: inline-block;
  }
}
.feacture:hover{
  // background: $hotkey-hover-color;
  @include background_color("hotkey-hover-color");
}
.selected{
  // background: $hotkey-selected-color;
  @include background_color("hotkey-selected-color");
}
</style>
