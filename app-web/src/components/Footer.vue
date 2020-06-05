<template>
  <div class="footer">
    <div id="copyright" class="copyright">
      <span>Copyright © 北京兴泰科技有限公司</span>
    </div>
    <div class="footer-left">
      <!-- <span><i></i>{{mouse.height}}m</span> -->
      <span>E: {{mouse.longitude}}</span>
      <span>N:{{mouse.latitude}}</span>
    </div>
    <div class="footer-right" @click="onClick" v-if="camVisible">
      CAM: &nbsp;&nbsp;
      <span>E: {{camera.longitude}} &nbsp; </span>
      <span>N: {{camera.latitude}} &nbsp; </span>
      <span>H: {{camera.height}} </span>
    </div>
  </div>
</template>

<script>
  import { getCamersPosition, fromScreenToMap } from '../util/common3d.js'
  export default {
    data() {
      return {
        mouse:{
          height: 0,
          latitude: 0,
          longitude: 0,
        },
        camera:{
          height: 0,
          latitude: 0,
          longitude: 0,
          heading: 0,
          pitch: 0,
          roll: 0,
        },
        camVisible: false,
        handler: null
      }
    },
    methods: {
      onClick() {
        console.log('camera: ', this.camera);
      },
      onResize(){
        let me = this;
        let copyright  = $('#copyright');
        copyright.css("left", (document.body.clientWidth - copyright.width()) / 2);
      }
    },

    mounted () {
      let me = this;
      me.$nextTick(() => {
        let _viewer = me.$root.viewer;
        _viewer.scene.camera.changed.addEventListener((e, d) => {
            let c = getCamersPosition(_viewer);
            me.camera.longitude = c.longitude.toFixed(6);
            me.camera.latitude = c.latitude.toFixed(6);
            me.camera.height = c.height.toFixed(0);
            me.camera.heading = c.heading.toFixed(6);
            me.camera.pitch = c.pitch.toFixed(6);
            me.camera.roll = c.roll.toFixed(6);
        });

        me.handler = me.handler !==null ? me.handler : new Cesium.ScreenSpaceEventHandler(_viewer.canvas);
        me.handler.setInputAction(movement => {
          let position = fromScreenToMap(_viewer, movement.endPosition.x, movement.endPosition.y)
          me.mouse.longitude = position.longitude.toFixed(6);
          me.mouse.latitude = position.latitude.toFixed(6);
          me.mouse.height = position.height.toFixed(0);
        }, Cesium.ScreenSpaceEventType.MOUSE_MOVE);

        me.handler.setInputAction(function onMouseClick(movement) {
          if(me.camVisible){
            let position = fromScreenToMap(_viewer, movement.position.x, movement.position.y)
            console.log('position: ', position);
          }
        }, Cesium.ScreenSpaceEventType.LEFT_CLICK);

        document.addEventListener('keydown', e => {
            let keyCode = e.keyCode || e.which || e.charCode;
            let shiftKey = e.shiftKey || e.metaKey;
            if(shiftKey && keyCode == 67) { me.camVisible = !me.camVisible }
        }, false);
        me.onResize();
        //根据窗口的大小变动图表
        window.addEventListener("resize", () => { me.onResize() });
      })

    },
    destroyed () {
      let me = this;
      if(me.handler !== undefined && me.handler !== null){
        me.handler.removeInputAction(Cesium.ScreenSpaceEventType.MOUSE_MOVE);
        me.handler = null;
      };
    },
  }
</script>

<style lang="scss" scoped>
@import "@/assets/style/_handle.scss";
  .footer{
    position: absolute;
    z-index: 1000;
    // background-color: $panel-background-color;
    @include background_color("panel-background-color");
    height: 30px;
    line-height: 30px;
    bottom: 0;
    width: 100%;
    color: #fffdef;
    -webkit-user-select:none;
    -moz-user-select:none;
    -ms-user-select:none;
    user-select:none;
    
    .footer-left{
      float: left;
      z-index: 9;
      span{
        font-size: 14px;
        // color: $label-color;
        @include font_color("label-color");
      }
      span:nth-of-type(2){
        margin: 0 10px;
      }
      span:nth-of-type(1){
        position: relative;
        // border-bottom: 1px solid #fffdef;
        margin: 10px;
        padding: 3px 8px;
        &:before , &:after , i{
          width: 1px;
          height: 5px;
          // background-color: #fffdef;
          position: absolute;
          bottom: 0;
        }
        &:before {
          left: 0;
          content: "";
        }
        &:after{
          content: "";
          right: 0;
        }
        i{
          left: calc( 50% - 1px);
        }
      }
    }
    .footer-right{
      margin-right: 64px;
      color: rgb(187, 255, 0);
      float: right;
      z-index: 9;
      cursor: pointer;
    }
    .copyright{
      text-align: center; 
      position: absolute; 
      bottom: 0px; 
      z-index: 0;
      color: #888888;
      font-size: 12px;
    }
  }
</style>