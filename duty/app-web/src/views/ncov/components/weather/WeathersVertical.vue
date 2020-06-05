<template>
  <div>
      <P class="casedetails">天气预报</P>
      <div id="weather-view-he" ></div>     
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
          var cs = d.createElement("link");
          cs.rel = "stylesheet";
          cs.href = "https://apip.weatherdt.com/view/static/css/tqw_widget_view.css?v=0101";
          var s = d.createElement("script");
          s.src = "https://apip.weatherdt.com/view/static/js/tqw_widget_view.js?v=0101";
          var sn = d.getElementsByTagName("script")[0];
          sn.parentNode.insertBefore(cs, sn);
          sn.parentNode.insertBefore(s, sn);
      })(document);
    })
    
  },
  watch: {
    
  },
  computed: {
    
  }
};
</script>
<style lang='scss'>
  // 天气控件 
  #weather-view-he{
      position: relative !important;
      top: 20px !important;
      left: 15% !important; 
      z-index: 2;
      background: rgba(57, 57, 58, 0) !important;
      >div:nth-of-type(1){
          background-image: none !important;
          box-shadow: none !important;
          font-size:14px !important;
          color:#fff !important;
      }
  }
  .wf-cr-copyright[data-v-226e1ce0]{
      display: none !important;
  }
</style>
