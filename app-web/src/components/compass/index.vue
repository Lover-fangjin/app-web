/**
 * Created by fangjin on 2019/6/20.
 */
<template>
    <div id="compass">
        <div class="compass-content">
            <div style="margin-top:20px;">
                <div class="compass" @mouseover="mouseover()">
                    <!-- <input  class="knob" data-angleArc=180 data-width="80" data-cursor=true displayinput ='false' data-fgColor="#b14100" data-thickness=.05> -->
                    <!-- <input  class="knob"   data-width="85" data-fgColor="#ffec03" data-skin="tron" data-thickness=".2" data-displayPrevious='true'> -->
                    <div class="canvas-div" style="height:100px !important">
                        <input class="knob" data-min="-90" data-max="90" data-width="90" data-displayPrevious=true data-fgColor="#e4e7eda3" data-skin="tron" data-cursor=true  data-thickness=".1" data-angleArc=180 data-stopper=true>
                    </div>
                    <!-- <input class="knob" data-width="85" data-angleOffset="180" data-angleArc=180  data-fgColor="#C0ffff" data-skin="tron" data-thickness=".1" value="35"> -->

                    <div class="north">
                        
                        <img @dblclick="northArrow()" class="earth-control-roll north-img" src="./assets/north.png" style="width:75px;height:75px;" alt="">

                        <div class="move" style="">
                            <ul>
                                <li @click="moveCamera(1)" style="border-radius: 100% 0 0 0;"><i class="el-icon-top-left"  style="padding: 8px 2px 2px 8px; border-radius: 100% 0 0 0;" /></li>
                                <li @click="moveCamera(2)" style="border-radius: 0 100% 0 0;"><i class="el-icon-top-right" style="padding: 8px 8px 2px 2px; border-radius: 0 100% 0 0;" /></li>
                            </ul>
                            <ul>
                                <li @click="moveCamera(4)" style="border-radius: 0 0 0 100%;"><i class="el-icon-bottom-left" style="padding: 2px 2px 8px 8px; border-radius: 0 0 0 100%;" /></li>
                                <li @click="moveCamera(3)" style="border-radius: 0 0 100% 0;"><i class="el-icon-bottom-right" style="padding: 2px 8px 8px 2px; border-radius: 0 0 100% 0;" /></li>
                            </ul>
                        </div>
                    </div>
                    <!-- <div class="action">
                        <ul>
                            <li><i class="el-icon-plus" style="border-radius: 100% 0 0 0;" /></li>
                            <li><i class="el-icon-refresh-right" style="border-radius: 100% 0 0 0;" /></li>
                            <li><i class="el-icon-minus" style="border-radius: 100% 0 0 0;" /></li>
                        </ul>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import { getCamersPosition } from '../../util/common3d.js'
    export default {
        components: {
        },
        data() {
            return {
                currentAngle: 0,
            }
        },

        methods: {
        },
        mounted () {
            this.$nextTick(function(){
                let me = this;
                let _viewer = me.$root.viewer;
                
                setTimeout(() => {
                    _viewer.scene.camera.changed.addEventListener(function(){
                        try { 
                            // let c = config.zInst1.camOper.getPosition()
                            let c = getCamersPosition(_viewer);
                            $('.earth-control-roll').css('transform', 'rotate(' + -c.heading + 'deg)')
                        } 
                        catch (e) {
                            console.log(e);
                        }finally{}
                    })
                }, 200)
            });
            
            // this.onRolling()
        }
    }
</script>

<style lang="scss" scoped>

div{
    -moz-user-select:none;/*火狐*/
    -webkit-user-select:none;/*webkit浏览器*/
    -ms-user-select:none;/*IE10*/
    -khtml-user-select:none;/*早期浏览器*/
    user-select:none;
}
#compass{
    position: absolute;
    right: calc( 20% + 10px );
    bottom: 280px;
    z-index: 99;
}
$bgColor:#e4e7eda3;
.compass{
    width: 90px;
    margin: 0 auto;
    position: relative;
    opacity: 0.75;
    .north{
        margin: 0 auto;
        width: 66px;
        position: absolute;
        top: 8px;
        left: 8px;
        z-index: 1;
        border-radius: 50%;
        img{
            opacity: 0.75;
            border-radius: 50%;
            vertical-align: middle;
        }
        img:active{
            opacity: 1;
        }
        .move{
            width:46px; 
            height:46px; 
            transform:rotate(45deg);
            line-height: 16px;
            position: absolute;
            left: 14px;
            top: 11px;
            z-index: 0;
            opacity: 0;
            border-radius: 50% !important;
            
            ul{
                margin: 0;
                padding: 0;
                width: 100%;
                li{
                    list-style: none;
                    display: table-cell;
                    vertical-align: top;
                    margin: 0;
                    padding: 1px;
                    font-size: 14px;
                    opacity: 0.75;
                    overflow: hidden;
                    i{
                        background:$bgColor;
                        width: 23px;
                        height: 23px;
                        color: #000;
                        cursor: pointer;
                    }
                    i:active{
                        background: #888;
                    }
                }
            }
            li:active{
                opacity: 1;
            }
        
        }
    }
    // .action{
        // width: 24px;
        // margin: 0 auto;
        // font-size: 14px;
        // position: absolute;
        // top: 95px;
        // left: 33px;
        // opacity: 0;
        // ul{
        //     margin: 0;
        //     padding: 0;
        //     width: 100%;
        // }
        // li{
        //     list-style: none;
        //     background: #b14100;
        //     text-align: center;
        //     margin-bottom: 2px;
        //     line-height: 24px;
        //     opacity: 0.75;
        //     width: 24px;
        //     height: 24px;
        //     cursor: pointer;
        // }
        // li:active{
        //     opacity: 1;
        // }
    // }
    
    .knob{
        position: absolute;
        display: none;
        z-index: 9;
        background-color: $bgColor;
    }
}
// .compass:hover >.action{
//     opacity: 1;
//     transition: all 1s;
// }
.compass:hover > .north >.move{
    transition: all 0.8s;
    opacity: 1;
    // transform: rotate(5deg);
}
.canvas-div{
    opacity: 0;
}
.compass:hover > .canvas-div{
    transition: all 0.7s;
    opacity: 1;
    // transform: rotate(5deg);
}

.wheel .indicator {
  width: 100%;
  height: 100%;
}
.wheel .indicator img{
  vertical-align: middle;
  text-align: center;
  width: 100%;
  height: 100%;
}

.indicator {
  -webkit-animation: rotate 2s;
          animation: rotate 2s;
}
</style>
