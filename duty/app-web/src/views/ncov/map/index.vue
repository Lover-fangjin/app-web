<template>
  <div class="mapTab">
    <el-row :gutter="2">
      <el-col :span="8">
        <el-card :class="currTab === 'flat' ? 'box-card el-card-selected' :'box-card'">
          <p @click="tabChange('flat')"> 疫情分布 </p>
        </el-card>
      </el-col>
      <el-col :span="8">
        <el-card :class="currTab === 'heat' ? 'box-card el-card-selected' :'box-card'">
          <p @click="tabChange('heat')"> 疫情热力图 </p>
        </el-card>
      </el-col>
      <el-col :span="8">
        <el-card :class="currTab === 'video' ? 'box-card el-card-selected' :'box-card'">
          <p @click="tabChange('video')"> 雷神山医院 </p>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
  import { mapGetters } from 'vuex';

  export default {
    components: {},
    methods: {
      confirm(value) {
        console.log('confirm:', value);
      },
      tabChange(name) {
        if(name !== this.currTab) {
          this.$store.commit('updateCurrTab', name);
        }
      }
    },
    watch: { },
    computed: {
      ...mapGetters([
        'currTab'    
      ])
    }
  }
</script>

<style lang="scss">
.mapTab {
  top: 71px;
  p{
    font-size: 14px;
  }
  .el-card {
    border: 1px solid rgb(41, 52, 99);
    // background-color: rgb(41, 52, 99);
    background-color: #152c4c99 !important;
    color: #d6d6d6;
    font-size: 12px;
    -webkit-transition: .3s;
    transition: .3s;
    cursor: pointer;
  }
  .el-card:hover {
    background-color: #6eaaff57 !important;
  }
  .el-card, .el-message {
    border-radius: 2px;
  }

  .el-card__body {
    padding: 2px !important;
  }
  .el-card .is-always-shadow, .el-card.is-hover-shadow:focus, .el-card.is-hover-shadow:hover {
    -webkit-box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
    box-shadow: 0 2px 12px 0 rgba(164, 185, 243, 0.5);
  }
  
  .el-card-selected {
    border: 1px solid rgb(156, 252, 127);
    color: rgb(156, 252, 127);
  }
}
</style>