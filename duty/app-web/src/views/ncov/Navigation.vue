<template>
  <div>
    <div class="navigation">
       <div class="title">
        <ul>
          <!-- <li :class="{active: areaType=='world'}" @click="toWorld()">全球</li> -->
          <li :class="{active: areaType=='china'}" v-show="areaType!='world'" @click="toChina()" >全国</li>
          <li :class="{active: areaType=='province'}" v-show="areaType=='province'">{{areaName|f_short}}</li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
import { mapGetters } from 'vuex';

export default {
  data() {
    return {
      areaName: "china"
    };
  },
  methods: {
    toWorld() {
      this.$router
        .push({ name: "ncov", params: { area: "world" } })
        .catch(err => {
          err;
        });
        this.$store.commit('updateCurrentArea', "world");
      // this._earth.cameraViewManager.globe.flyTo();
      // this._earth.cameraFlight.rotateGlobe.start();
    },
    toChina() {
      this.$router
        .push({ name: "ncov", params: { area: "china" } })
        .catch(err => {
          err;
        });
        this.$store.commit('updateCurrentArea', "china");
      // this._earth.cameraViewManager.china.flyTo();
      // this._earth.cameraFlight.rotateGlobe.cancel();
    },
  },
  filters: {
    f_time(ut) {
      return moment(new Date(ut)).format("MM月DD日HH时");
    },
    f_short(fn){
      const    areaMap = { 
    "黑龙江省": "黑龙江",
    "宁夏回族自治区": "宁夏",
    "广西壮族自治区": "广西",
    "内蒙古自治区": "内蒙古", 
    "新疆维吾尔自治区": "新疆",
    "西藏自治区": "西藏",
    "香港特别行政区": "香港",
    "澳门特别行政区": "澳门",
    };  
    
     return areaMap[fn] || fn;
    }
  },
  computed: {
    ...mapGetters([
      'currentArea'    
    ]),
    areaType() {
      if (this.areaName == "china" || this.areaName == "world")
        return this.areaName;
      return "province";
    }
  },
  watch: {
    "currentArea"(v) {
      this.areaName = v;
    }
  },
};
</script>
<style scoped>
.navigation {
  width: 100%;
  height: 70px;
}
.text {
  font-size: 20px;
  color: #24fffd;
  text-shadow: 2px 0 2px #0080ff, -2px 0 2px #0080ff, 0px 2px 2px #0080ff,
    0px -2px 2px #0080ff;
  margin-left: 32px;
  text-align: center;
  line-height: 56px;
}
.title {
  float: left;
  width: 300px;
}
li {
  list-style: none;
  float: left;
  color: white;
  font-size: 22px;
  width: 82px;
  height: 36px;
  line-height: 36px;
  margin-top: 20px;
  cursor: pointer;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
li:nth-child(1) {
  background: url(./img/header1.png) no-repeat;
  background-size: 100% 100%;
  margin-left: 18px;
  padding-left: 10px;
}
li:nth-child(2),
li:nth-child(3) {
  background: url(./img/header2.png) no-repeat;
  background-size: 100% 100%;
  padding-left: 16px;
  padding-right: 10px;
  margin-left: -20px;
}
li:nth-child(3) {
  padding-left: 16px;
}
</style>
