<template>
  <div>
      <div id="weather-float-he" ></div>     
  </div>
</template>
<script>

import { mapGetters } from 'vuex';

export default {
  components: {
 
  },
  data () {
    return {
      areaName: "china"
    };
  },

  mounted() {
    let me = this;
    // 天气
    me.$nextTick(() => {
      (function (d) {
          var a = d.getElementById('weather-float-he')
          var c = d.createElement('link')
          c.rel = 'stylesheet'
          c.href = 'https://apip.weatherdt.com/float/static/css/tqw_widget_float.css?v=0101'
          var s = d.createElement('script')
          s.src = 'https://apip.weatherdt.com/float/static/js/tqw_widget_float.js?v=0101'
          var sn = d.getElementsByTagName('script')[0]
          sn.parentNode.insertBefore(c, sn)
          sn.parentNode.insertBefore(s, sn)
      })(document)
    })
    
  },
  watch: {
    
  },
  computed: {}
};
</script>
<style lang='scss'>
  // 天气控件 
  #weather-float-he{
      position: relative !important;
      top: 20px !important;
      left: 10px !important; 
      z-index: 9 !important; 
      background: rgba(49, 58, 68, 0) !important;
      >div:nth-of-type(1){
          background-image: none !important;
          box-shadow: none !important;
          font-size:14px !important;
          color:#fff !important;
          background: rgba(49, 58, 68, 0) !important;
      }
  }
  .wf-cr-copyright[data-v-226e1ce0]{
      display: none !important;
  }
</style>
