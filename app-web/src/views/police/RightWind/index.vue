<template>
  <div class="right-panel">
    <div style="float:left;margin-left:-50px;"><Hotkey/></div>
    <div class="right-top">
    </div>
    <div class="right-center">
    </div>
    <div class="right-buttom">
    </div>
  </div>
</template>

<script>
import Hotkey from '../../components/Hotkey.vue';
export default {

  components: {
    Hotkey
  },
  methods: {
  },
};
</script>
<style scoped lang="scss">
@import "@/assets/style/index.scss";

.right-panel {
  // background-color: blue;
  width: 20%;
  top: 80px;
  right: 0px;
  bottom: 20px;
  color: white;
  position: absolute;
  height: calc(100% - 130px);
  padding: 5px;
  z-index: 5;
  clear: both;

  .right-top {
    height: 33%; 
    overflow: hidden;
    // background: $panel-background-color;
      @include background_color("panel-background-color");
    background-image: url("../../../assets/hengL.png");
    background-repeat: no-repeat;
    background-size: contain;
  }
  .right-center {
    height: 33%; 
    width: 100%;
    color: white;
    overflow: hidden;
    margin-top: 5px;
    // background: $panel-background-color;
    @include background_color("panel-background-color");
    background-image: url("../../../assets/hengL.png");
    background-repeat: no-repeat;
    background-size: contain;
  }
  .right-buttom {
    height: 34%; 
    width: 100%;
    color: white;
    overflow: hidden;
    margin-top: 5px;
    // background: $panel-background-color;
    @include background_color("panel-background-color");
    background-image: url("../../../assets/hengL.png");
    background-repeat: no-repeat;
    background-size: contain;
  }
  
}
</style>
