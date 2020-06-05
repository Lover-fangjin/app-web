<template>
  <div class="people-count" >
    <div class="people-count-box">
        <div class="people-count-img"><div class="img"><img src="static/images/duty/icon.png" alt=""></div><span>在岗人数</span></div>  
        <div><span style="font-size:22px;margin-right:10px;">{{ OnDuty }}</span>人</div>
    </div>
    <div class="people-count-box">
        <div class="people-count-img"><div class="img"><img src="static/images/duty/icon.png" alt=""></div><span>可调配人数</span></div>  
        <div><span style="font-size:22px;margin-right:10px;">{{ UnDuty }}</span>人</div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
export default {
  components: {
  },
  computed: {
    ...mapGetters([
      'dutyInfos'    
    ])
  },
  data () {
    return {
      OnDuty: 0,
      UnDuty: 0,
    };
  },
  mounted() {
    let me = this;
    me.$api.getDutyNum().then(res =>{
      if(res.resultCode === 200){
        this.$store.commit('updateDutyInfos', res.result.all);
      }
    });
  },
  methods: {
    updateDuty() {
      let me = this;
      me.OnDuty = 0;
      me.dutyInfos.map(people => {
        people.isDuty == '1' && me.OnDuty ++;
      })
      me.UnDuty = me.dutyInfos.length - me.OnDuty;
    }
  },
  watch: {
    'dutyInfos'(value) {
      this.updateDuty(value);
    }
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/style/ztman.scss";
.people-count-box{
    background: $duty-bg;
    border: 1px solid $duty-border;
    float: left;
    color: #fff;
    width: 140px;
    height: 60px;
    border-radius: 5px;
    padding:10px 5px;
    .people-count-img{
        margin-bottom: 10px;
        span{
            font-size: 14px;
        }
        .img{
            display: inline-block;
            width: 33px;
            height: 25px;
            margin-right: 10px;
            img{
                width: 100%;
                height: 100%;
            }
        }
    }
}
.people-count-box:nth-child(1){
    margin-right: 70px;
}

</style>
