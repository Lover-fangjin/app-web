<template>
  <div class="bottom-wrap" >
    <el-carousel trigger="click" height="100px" :autoplay="false">
      <el-carousel-item v-for="(list, n) in datas" :key="n">
        <div v-for="(item, i) in list" :key="i" :class="currentIndex == item.id ?'back_s bottom-route-btn':'back_d bottom-route-btn'" @click="change(item.id)" >
          <router-link :to="{path: item.linkTo}" >
            <img :src="currentIndex == item.id  ? item.img_s : item.img_s " alt=""><p>{{ item.name }}</p>
          </router-link> 
        </div>
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
<script>

export default {
  data() {
    return {  
      currentIndex:'',
      screenWidth: document.body.clientWidth,
      routerDatas: [
        {
          id:'0',
          name:'首页',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/home.png',
          img_s:'static/images/bottomIcon/home_s.png'
        },
        {
          id:'1',
          name:'保安',
          linkTo:'/duty/security',
          img_d:'static/images/bottomIcon/baoan.png',
          img_s:'static/images/bottomIcon/baoan_s.png'
        },
        {
          id:'2',
          name:'城警',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/chengguan.png',
          img_s:'static/images/bottomIcon/chengguan_s.png'
        },
        {
          id:'3',
          name:'防疫',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/fangyi.png',
          img_s:'static/images/bottomIcon/fangyi_s.png'
        },
        {
          id:'4',
          name:'环卫',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/huanwei.png',
          img_s:'static/images/bottomIcon/huanwei_s.png'
        },
        {
          id:'5',
          name:'辅警',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/fujing.png',
          img_s:'static/images/bottomIcon/fujing_s.png'
        },
        {
          id:'6',
          name:'消防',
          linkTo:'/fire',
          img_d:'static/images/bottomIcon/xiaofang.png',
          img_s:'static/images/bottomIcon/xiaofang_s.png'
        },
        {
          id:'7',
          name:'综治',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/zongzhi.png',
          img_s:'static/images/bottomIcon/zongzhi_s.png'
        },
        {
          id:'8',
          name:'物业',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/wuye.png',
          img_s:'static/images/bottomIcon/wuye_s.png'
        },
        {
          id:'9',
          name:'村域',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/cunzhen.png',
          img_s:'static/images/bottomIcon/cunzhen_s.png'
        },
        {
          id:'10',
          name:'下沉党员',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/xiachen.png',
          img_s:'static/images/bottomIcon/xiachen_s.png'
        },
        {
          id:'11',
          name:'志愿者',
          linkTo:'/duty',
          img_d:'static/images/bottomIcon/zhiyuan.png',
          img_s:'static/images/bottomIcon/zhiyuan_s.png'
        },
        
      ],
      itemWidth: 82,
      datas: []
    }
  },
  mounted () {
    let me = this;
    me.onResize();
    //根据窗口的大小变动图表
    window.addEventListener("resize", () => { me.onResize() });
  },
  methods: {
    change(index) {
      this.currentIndex = index;
    },
    onResize(){
      let me = this;
      let _width =  document.body.clientWidth - 1020;
      let pages = Math.ceil(me.itemWidth * me.routerDatas.length / _width);
      let nums = Math.floor(_width / me.itemWidth);

      let _datas = [];
      let _itemNum = me.routerDatas.length;
      for(let i=0; i < pages; i++){
        let _items = [];
        for(let j=0; j < nums; j++){
          let _index = i * nums + j;
          if(_index < _itemNum){
            _items.push( me.routerDatas[_index] );
          }
        }
        _datas.push(_items);
      }
      me.datas = _datas;
    }
  },
  components: {

  },
};
</script>
<style scoped lang='scss'>
@import "../../assets/style/ztman.scss";
.bottom-wrap{
  height: 100px;
  position: fixed;
  bottom: 10px;
  left: 510px;
  width: calc( 100% - 1020px );
  color: white;
  text-align: center;
  z-index: 7;
  overflow-x: auto;
  white-space: nowrap;
}
.bottom-route{ 
  // width: 60%;
  margin: 0 auto;
  display: block;
  vertical-align: middle;
  display: flex;
  min-width: 970px;
  
}
.back_s{  
  background: rgba(23,151,189,0.77);
}
.back_d{
  background:$duty-bg; 
}
.bottom-route-btn{
  border: 1px solid  $duty-border;
  display: inline-block;
  width: 60px;
  border-radius: 5px;
  vertical-align: middle;
  height: 30;
  padding: 8px 5px 5px 5px ;
  margin-right: 10px;
  img,p{
    vertical-align: middle;
    display: block;
    text-align: center;
    margin: 0 auto;
  }
  p{
    margin-top: 5px;
    color: #fff;
  }
}
.bottom-ul{
  width: 600px; 
  overflow-y: hidden;
  overflow-x: scroll;
  height:80px; 
  white-space: nowrap;
}
.width{
  width: 1000px;
  
}
</style>

<style lang="scss">
.el-carousel__arrow--right {
    right: 0px !important;
}
.el-carousel__arrow--left {
  left: 0px !important;
}
.el-carousel__arrow {
  background-color: rgba(193, 185, 185, 0.49) !important;
  top: 36% !important;
}
</style>