<template>
  <div class="people-wrap">
    <p class="statistics-title">应急处突事件实时上报</p>
    <div style="text-align: left; padding: 5px 10px; ">
      <!-- <el-row>
        <el-col :span="4">
          <el-checkbox :indeterminate="isIndeterminate" v-model="checkAll" @change="handleCheckAllChange">全选</el-checkbox>
        </el-col>
        <el-col :span="20">
          <el-checkbox-group v-model="checkedTypes" @change="handleCheckedCitiesChange">
            <el-checkbox v-for="type in types" :label="type" :key="type">{{type}}</el-checkbox>
          </el-checkbox-group>
        </el-col>
      </el-row> -->

      <el-radio-group v-model="radio" v-if="eventTypes.length > 0" @change="onEventChange">
        <el-row>
          <el-col :span="6" v-for="item in eventTypes" :key="item.id">
            <el-radio :label="item.name" >{{item.name}}</el-radio>
          </el-col>
        </el-row>
      </el-radio-group>
    </div>

    <div class="block-group">
      <div style="margin: 30% 20%; font-size: 18px; color: #ccc;" v-if="activities.length === 0">
        未查到事件数据...
      </div>
      <div class="block">
        <el-timeline v-if="activities.length > 0">
          <el-timeline-item :timestamp="item.date.split('T')[0]" placement="top" v-for="item in activities" :key="item.id">
              <ul class="block-ul" @click="location(item)" @mouseover="onMouseOver(item.siteName)" @mouseleave="onMouseLeave()">
                <li style="width:20px ">
                  <i class="el-icon-chat-dot-round" style="font-size: 16px; color: #ffffff;"></i>
                </li>
                <li style="width:calc(100% - 20px); ">
                  <el-row>
                    <el-col :span="10">
                      <span>上报人员：</span>
                      <span>{{item.captain}}</span>
                    </el-col>
                    <el-col :span="14">
                      <span>联系方式：</span>
                      <span>{{item.cap_tel}}</span>
                    </el-col>
                  </el-row>

                  <el-row>
                    <el-col :span="24">
                      <span>执勤地点：</span>
                      <span>{{item.siteName}}</span>
                    </el-col>
                  </el-row>

                  <el-row>
                    <el-col :span="24">
                      <span>事件详情：</span>
                      <span class="detail">{{item.remarks}}</span>
                      <!-- <img class="detailImg" :src="formatImg(item.imgs[0])" alt=""> -->
                      <div class="demo-image__preview" v-if="item.imgs.length > 0">
                        <el-image  v-for="(img, index) in item.imgs" :key="index"
                          style="width: 90px; height: 90px; padding-right: 5px; padding-top: 5px;"
                          :src="formatImgs([img])[0]" 
                          :preview-src-list="formatImgs(item.imgs)">
                        </el-image>
                      </div>
                    </el-col>
                  </el-row>
                </li>
            </ul>

            <span slot='dot'>
              <span type="danger" size="mini" style="position: absolute; left: -60px; top: -4px; width:56px; text-align:right; color: #1fa6e7;">{{item.date.split('T')[1].split('.')[0]}}</span>
              <el-tag type="danger" size="mini" style="position: absolute; left: 110px; top: -3px; text-align:center; color: #1fa6e7; border: 1px solid #1fa6e7; background: none;">{{item.eventType}}</el-tag>
              <!-- <span style="position: absolute; width:8px; height:8px; background: #ff0000; display:block; left: -11px; top: 2px; transform: rotate(45deg);"></span> -->
              <span style="width:11px; height:11px; margin-left:-1px; background: #E4E7ED; display:block; border-radius:50%;"></span>
            </span>
          </el-timeline-item>
        </el-timeline>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { highlight, unHighlight } from '../../components/poi/poi.js'
import { lookAndFlyEntityOfName, lookAndFlyPoint } from '@/util/common3d';
import { isEmptyArray, zIndexBottom } from '@/util/tools';
export default {
  computed: {
    ...mapGetters([
      'eventlist'    
    ])
  },
  data () {
    return {
      timer: null,
      checkAll: true,
      isIndeterminate: false,
      activities: [],
      types: [],
      checkedTypes: [],
      checked: false,
      srcList: [
        'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
        'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg'
      ],
      eventTypes:[],
      radio: '涉疫类',
      eventsInfo: []
    };
  },

  mounted () {
    let me = this;
    let params = {
      pageNum: 1,
      pageSize: 999
    }
    me.$api.getAllEvent(params).then(res =>{
      if(res.resultCode === 200){
        me.eventsInfo = res.result.list
        me.$store.commit('updateEventlist', res.result.list);
        me.filterActivities(me.eventsInfo);
      }
    });

    // EventType
    let eParams = {pid: -1}
    me.$api.getEventType(eParams).then(res =>{
      if(res.resultCode === 200){
        // console.log('EventType: ', res.result.dicts)
        me.eventTypes = res.result.dicts
      }
    });
  },

  methods: {
    filterActivities( _eventlist){
      let me = this;
      if(isEmptyArray(_eventlist)) { return; }
      // debugger
      me.activities = _eventlist.filter(event => {return me.radio === event.eventClass});
      // let _types = [];
      // if(me.checked){
      //   me.activities = []
      //   _eventlist.map( event => {
      //     if(_types.indexOf(event.eventType) === -1){
      //       _types.push(event.eventType)
      //     }
      //   });
      //   // 差集
      //   let diff = me.types.filter(function (val) { return _types.indexOf(val) === -1 })
      //   // 并集
      //   me.types = me.types.concat(_types.filter(function (val) { return !(me.types.indexOf(val) > -1) }));
      //   me.checkedTypes = me.checkedTypes.concat(diff.filter(function (val) { return !(me.checkedTypes.indexOf(val) > -1) }));
        
      //   _eventlist.map( event => {
      //     if(me.checkedTypes.indexOf(event.eventType) !== -1){
      //       me.activities.push(event)
      //     }
      //   })
      // }else{
      //   _eventlist.map( event => {
      //     if(_types.indexOf(event.eventType) === -1){
      //       _types.push(event.eventType)
      //     }
      //   });
      //   me.checkedTypes = me.types = me.types.concat(_types.filter(function (val) { return !(me.types.indexOf(val) > -1) }));
      //   me.activities = _eventlist
      // }
    },
    onEventChange(value){
      this.filterActivities(this.eventsInfo)
    },
    // checkedChange(){
    //   let me = this;
    //   me.activities = [];
    //   me.eventlist.map( event => {
    //     if(me.checkedTypes.indexOf(event.eventType) !== -1){
    //       me.activities.push(event)
    //     }
    //   })
    // },
    location(item){
      lookAndFlyPoint(parseFloat(item.lon), parseFloat(item.lat), 0, 2000);
    },
    onMouseOver(_name){
      highlight(_name);
    },
    onMouseLeave(){
      unHighlight()
    },
    handleCheckAllChange(val) {
      this.checked = true;
      this.checkedTypes = val ? this.types : [];
      this.isIndeterminate = false;
      this.checkedChange();
    },
    handleCheckedCitiesChange(value) {
      this.checked = true;
      let checkedCount = value.length;
      this.checkAll = checkedCount === this.types.length;
      this.isIndeterminate = checkedCount > 0 && checkedCount < this.types.length;
      this.checkedChange();
    },
    formatImgs(images, index = 0) {
      let _arr = [];
      images.map(url => {
        let _url = config.services +  url;
        _arr.push(_url)
      })
      return _arr;
    }
  },
  destroyed () {
    this.checked = [];
    this.checked = false;
  },
  watch: {
    'eventlist'(value) {
      this.eventsInfo = value
      this.filterActivities(value)
    }
  },
};
</script>
<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.people-wrap{
  height: 100%;
  background: $duty-bg;
  color: white;
  width: 100%;
  padding-top:10px;
  background-image: url("../../../../assets/hengR.png");
  background-repeat: no-repeat;
  .statistics-title{
    margin-top: 10px;
    margin-bottom: 20px;
    margin: 0;
    font-weight: bold;
    font-size: 16px;
  }
  .block-group{
    width: 100%;
    height: calc(100% - 70px);
    overflow-y: auto;
    // margin-top: 5px;
  }
  .block{
    width: 86%;
    text-align: left;
    margin-left: 66px;
    margin-top: 15px;
  } 
  
  .block-ul{
    padding:5px;
    position: relative;
    display: table;
    width: 94%;
    cursor: pointer;
    .imgs{
      top: 18px;
      left: 0;
      width: 15px;
      height: 15px;
    }
    li{
        float:left;
        display:table-cell;
        word-break: break-all;
        vertical-align: top; 
        span{
          font-size: 14px;
        }
        span:nth-of-type(1){
          color: $duty-statistics-color !important;
        }
        span:nth-of-type(2){
          color: #ffffff;
        }
    }
    .block-info{
        margin: 0px 0 10px 10px;
        span{
          font-size: 14px;
          display:table-cell;
          word-break: break-all;
          vertical-align: top; 
        }
        span:nth-of-type(1){
          width: 70px;
          color: $duty-statistics-color !important;
        }
        span:nth-of-type(2){
          color: #ffffff;
        }
    }
    .el-row {
      margin-bottom: 3px;

      .detail{
        width:266px;
        display:inline-flex;
      }
      .detailImg{
        width: calc(100% - 5px);
        margin-top: 5px;
        display: block;
      }
    }
  }
  .block-ul:hover{
    background-color: $duty-hover
  }
  
}
</style>
<style lang='scss'>
  @import "@/assets/style/ztman.scss";
  .el-timeline-item__timestamp.is-top{
    color: $duty-color !important;
  }
  .el-timeline-item__tail {
    border-left: 1px dashed #E4E7ED !important;
  }
  .el-timeline-item__wrapper {
    padding-left: 20px !important;
  }
  .el-timeline-item {
    padding-bottom: 10px !important;
  }
  .el-image-viewer__close {
    top: 100px !important;
    right: 100px !important;
    width: 40px;
    height: 40px;
    font-size: 64px !important;
    color: #fff !important;
  }

  .people-wrap .el-radio {
    color: $duty-color !important;
  }
</style>
