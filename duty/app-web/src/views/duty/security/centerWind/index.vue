<template>
  <div class="count-wrap">
    <PeopleCounting />
    <Features/>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import PeopleCounting from './PeopleCounting';
import Features from './freatures';

export default {
  components: {
      PeopleCounting, Features
  },
  data () {
    return {

    };
  },
  mounted() {
    let me = this;
    me.$nextTick(() => {})
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/style/ztman.scss";
.count-wrap{
    position: relative;
    // width: 100%;
    top:90px;
    left: calc( 50% - 240px);
    z-index: 3;
}
</style>
