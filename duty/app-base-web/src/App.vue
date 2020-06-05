<template>
  <div id="app">
    <!-- <router-view/> -->
    <Earth />
  </div>
</template>

<script>
import Earth from './views/Earth.vue'
export default {
  components: {
    Earth,
  },
}
</script>

<style  lang="scss" type="text/scss">
@import "./assets/style/index.scss";
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  height: 100%;
  position: relative;
  z-index: 0;
  min-width: 1600px !important;
  overflow-x: auto;
  min-height:900px;
}

</style>
