<template>
  <div
    class="video_con" ref='video_con' :id='georef'
    @dbclick="toggleFullScreen(false)"
    v-show="show" > 
    <video class="video" crossorigin autoplay="false" loop="true" muted="true" ref="video"></video>
    <label class="name">{{name}}</label>
    <div class="control">
      <!-- <button class="mapbtn" @click="tomap()"></button> -->
      <button class="fsbtn" @click="toggleFullScreen(true)"></button>
    </div>
    <span class="arrow"></span>
  </div>
</template>
<script>
import Hls from "hls.js";
export default {
  props: {
    name: String,
    url: String,
    georef: String,
    vtype: String,
    medias: Array
  },
  data() {
    return {
      show: true
    };
  },
  mounted() {
    var video = this.$refs.video;

    let info = this.medias.filter(item => {return item.ref === this.georef + '_video'})[0]
    console.log(info.czmObject.position);
    let lat=Cesium.Math.toDegrees(info.czmObject.position[0]);//cartograhphic.latitude(弧度)并非我们想要的  转化后的才是我们想要的（经纬度），
    let lng=Cesium.Math.toDegrees(info.czmObject.position[1]);
    console.log('position: ', lat, lng);

    let viewer = config.zInst1.viewer;
    var oneDiv =$("#" + this.georef);
    if(info.ref === 'leishenshan01_video'){ lng = 30.432373 }
    var position = Cesium.Cartesian3.fromDegrees(lat, lng, info.czmObject.position[2]);
    this.creatHtmlElement(viewer, oneDiv, position, [-133, -127], true);

    viewer.camera.flyTo({
        destination :Cesium.Cartesian3.fromDegrees(114.28367784604231, 30.431350708430188, 2000)
    });

    if (this.vtype == "mp4") {
      video.src = this.url;
    } else {
      this._hls = new Hls();
      this._hls.loadSource(
        //"https://mobilelive-play.ysp.cctv.cn/ysp/48DBAC04BAF25EC508321C7D9AA2EE0D416DEC24B7BE6C46A1B779069E85905D38EBF0D6097BFF12522BC947DA37B1053C3EB4984A7CB2B8C33E5DA99CF9F0C95EE29E9E9C851A07E07CA20DC4BDF1A61125E33922B62AB49C2EDC3940ACCA31/2001891501_hd.m3u8"
        this.url
      );
      this._hls.attachMedia(video);
      this._hls.on(Hls.Events.MANIFEST_PARSED, function() {
        //video.play();
      });
    }

  },
  methods: {
    toggleFullScreen(fullScreen) {
      if (fullScreen) {
        this.$refs.video.requestFullscreen();
      } else {
        document.exitFullscreen();
      }
    },
    /**
     * 创建一个 htmlElement元素 并且，其在earth背后会自动隐藏
     */
    creatHtmlElement(viewer, element, position, arr, flog){
      var scratch = new Cesium.Cartesian2(); //cesium二维笛卡尔 笛卡尔二维坐标系就是我们熟知的而二维坐标系；三维也如此
      var scene=viewer.scene,camera=viewer.camera;
      scene.preRender.addEventListener(function() {
        var canvasPosition =scene.cartesianToCanvasCoordinates(position, scratch);//cartesianToCanvasCoordinates 笛卡尔坐标（3维度）到画布坐标
        if (Cesium.defined(canvasPosition)) {
          element.css({
            // top:canvasPosition.y,
            // left:canvasPosition.x
            left:canvasPosition.x+arr[0],
            top:canvasPosition.y+arr[1]
          });
          /* 此处进行判断**/// var px_position = Cesium.SceneTransforms.wgs84ToWindowCoordinates(scene, cartesian);
          if(flog&&flog==true){
            var e = position, i = camera.position, n = scene.globe.ellipsoid.cartesianToCartographic(i).height;
            if (!(n += 1 * scene.globe.ellipsoid.maximumRadius, Cesium.Cartesian3.distance(i, e) > n)) {
              element.show();
            } else {
              element.hide();
            }
          }
          /* 此处进行判断**/
        }
      });
    },
    updateRender(){}
  },
  destroyed () {
    let viewer = config.zInst1.viewer;
    var scene=viewer.scene
    scene.preRender.addEventListener(function(){})
  },
};
</script>
<style scoped>
.video_con {
  /* position: absolute; */
  position:fixed;
  width: 266px;
  height: 155px;
  background: url(../img/video_bg.png) no-repeat;
  background-size: 100% 100%;
  z-index: 999;
}
.video {
  width: 256px;
  margin-left: 6px;
  margin-top: 6px;
}
.name {
  position: relative;
  float: right;
  margin-top: -155px;
  top: 4px;
  color: white;
  /* right: 4px; */
  width: 124px;
  height: 24px;
  text-align: center;
  line-height: 24px;
  background: black;
  background: url(../img/video_name.png) no-repeat;
  background-size: 100% 100%;
  font-size: 14px;
}

.control{
  position: relative;
  width: 40px;
  height: 24px;
  float: right;
  margin-top: -30px;
}
.fsbtn {
  /* position: absolute;
  bottom: 8px;
  right: 8px; */
  width: 20px;
  height: 20px;
  background: url(../img/quanping.png) no-repeat;
  background-size: 100% 100%;
  border: none;
  cursor: pointer;
  outline: none;
}
.fsbtn:hover {
  background: url(../img/quanping_on.png) no-repeat;
  background-size: 100% 100%;
}

.mapbtn {
  /* position: absolute;
  bottom: 8px;
  right: 36px; */
  width: 20px;
  height: 20px;
  margin-right:10px; 
  background: url(../img/location.png) no-repeat;
  background-size: 100% 100%;
  border: none;
  cursor: pointer;
  outline: none;
}
.mapbtn:hover {
  background: url(../img/location_on.png) no-repeat;
  background-size: 100% 100%;
}
.arrow {
  display: inline-block;
  position: absolute;
  right: 59px;
  bottom: -28px;
  width: 138px;
  height: 30px;
  background: url(../img/arrow.png) no-repeat;
  background-size: 100% 100%;
}
</style>
