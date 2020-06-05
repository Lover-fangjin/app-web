<template>
  <div class="fatures-wrap">
    <el-tooltip effect="dark" content="项目范围" placement="left-start">
      <div @click="onFuweiClick()">
        <Square imgUrl="static/images/duty/fuwei.png" />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" :content="isFullscreen ? '收起' : '展开'" placement="left-start">
      <div @click="fullScreen()">
        <Square :imgUrl="isFullscreen ? 'static/images/duty/quanping.png' : 'static/images/duty/tuichu.png'"  />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" :content="online ? '电子地图' : '影像地图'" placement="left-start">
      <div @click="onQieHuanClick()">
        <Square imgUrl="static/images/duty/qiehuan.png" />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="顶视" placement="left-start">
      <div @click="onTop()">
        <Square imgUrl="static/images/duty/huanshis.png" />
      </div>
    </el-tooltip>

    <el-tooltip effect="dark" content="透视" placement="left-start">
      <div @click="onOverlook()">
        <Square imgUrl="static/images/duty/fushis.png" />
      </div>
    </el-tooltip>
  </div>
</template>

<script>
  import { mapGetters } from 'vuex';
  import screenfull from 'screenfull';
  import { topViewer, overlookViewer, lookAndFlyPoint, removeEntityByType, drawEntityPoiSingle, Css3Renderer } from '../../../util/common3d.js';
  import Square from './Square.vue'

  export default {
    components: {
        Square,
    },
    data () {
      return {
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
        topViewer(this.$root.viewer);
      },
      // 透视
      onOverlook(){
        overlookViewer(this.$root.viewer);
      },
      onFuweiClick() {
        let _viewer = this.$root.viewer;
        let _entities = this.$root.areaEntities;
        if(_entities !== null){
          _viewer.flyTo(_entities.values, {
            duration: 3,
            offset: {
              heading: Cesium.Math.toRadians(0.0),
              pitch: Cesium.Math.toRadians(-90)
            }
          });
        }
      },
      onQieHuanClick(){
        let _viewer = this.$root.viewer;
        _viewer.imageryLayers.remove(_viewer.imageryLayers.get(0))
        if(this.online){
          let img = _viewer.imageryLayers.addImageryProvider(
            new Cesium.UrlTemplateImageryProvider({
              url: "http://webrd02.is.autonavi.com/appmaptile?lang=zh_cn&size=1&scale=1&style=8&x={x}&y={y}&z={z}",
            })
          );
          img.brightness = 0.5;
          this.online=false;
        } else {
          let img = _viewer.imageryLayers.addImageryProvider(
            new Cesium.UrlTemplateImageryProvider({
              maximumLevel:18,//最大缩放级别
              url : 'https://webst02.is.autonavi.com/appmaptile?style=6&x={x}&y={y}&z={z}',
              style: "default",
              format: "image/png",
              tileMatrixSetID: "GoogleMapsCompatible"
            })
          );
          img.brightness = 0.25;
          this.online=true;
        }
      },
      fullScreen(){
        let me = this;
        me.isFullscreen = !me.isFullscreen;
        if(me.isFullscreen){
          me.$store.commit('updateWindShow', true);
          $('#navigationDiv').show()
          // $('#navigationDiv .compass').css("left","500px !important");
          // $('#navigationDiv .navigation-controls').css("left","530px !important");
        }else{
          me.$store.commit('updateWindShow', false)
          $('#navigationDiv').hide()
          // $('#navigationDiv .compass').css("left","0px !important");
          // $('#navigationDiv .navigation-controls').css("left","30px !important");
        }
        
        // if(me.isFullscreen) {
        //   me.$router.push({ name: "printer", params: {} }).catch(err => { err; });
        // } else {
        //   me.$router.push({ name: "index", params: {} }).catch(err => { err; });
        // }
        
        // if(this.isFullscreen) {
        //   var el = document.documentElement;
        //   var rfs = el.requestFullScreen || el.webkitRequestFullScreen || el.mozRequestFullScreen || el.msRequestFullScreen;
        //   this.isFullscreen=false;
        // } else {
        //   var el = document;
        //   var rfs = el.cancelFullScreen || el.webkitCancelFullScreen || el.mozCancelFullScreen || el.exitFullScreen;
        //   this.isFullscreen=true;
        // }
        // //typeof rfs != "undefined" && rfs
        // if (rfs) {
        //   rfs.call(el);
        // } else if (typeof window.ActiveXObject !== "undefined") {
        //   //for IE，这里其实就是模拟了按下键盘的F11，使浏览器全屏
        //   var wscript = new ActiveXObject("WScript.Shell");
        //   if (wscript != null) {
        //     wscript.SendKeys("{F11}");
        //   }
        // }
      },
    },
    destroyed() {
    },
  };
</script>

<style scoped lang="scss">
@import "@/assets/style/ztman.scss";
// .fatures-wrap {
//   position: absolute;
//   top:90px;
//   right: 510px;
//   z-index: 9;
// }
.feacture{
  background: $duty-bg;
  border: 1px solid $duty-border;
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
  background: $duty-hover
}
.selected{
  background: rgba(25, 55, 132, 0.9);
}
</style>
