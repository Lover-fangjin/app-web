<template>
  <div class="left-panel">
    <div class="left-top"></div>
  </div>
</template>

<script>

export default {
  components: {
  },
  mounted () {
  },
  methods: {
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/style/index.scss";
.left-panel {
  width: 20%;
  position: absolute;
  top: 80px;
  bottom: 20px;
  left: 0px;
  color: white;
  height: calc(100% - 120px);
  padding: 5px;
  z-index: 6;

  .left-top{
    height: 100%; 
    overflow: hidden;
    // background: $panel-background-color;
    @include background_color("panel-background-color");
    background-image: url("../../../assets/hengR.png");
    background-repeat: no-repeat;
    background-size: contain;
  }
}
</style>
