<template>
     <!-- <div class="wind" ref="wind" @mousedown="currentClick()" :class="windGuid === windId ? 'firstStyle': 'endStyle'"> -->
     <div class="wind firstStyle" ref="wind" @mousedown="currentClick()">
        <div class="header" @mousedown="move">
            <p class="title">{{title}}</p>

            <slot name="closeBtn">
                <i @click="close" class="el-icon-close close"/>
            </slot>

            <div class="controls">
                <slot name="controls"></slot>
            </div>
        </div>
        <div class="content">
            <slot name="content"></slot>
        </div>
    </div>
</template>

<script>
    import { mapGetters } from 'vuex'
    export default {
        props: {
            title:{
                type: String,
                default: "这是标题8"
            },
            drage:{
                type: Boolean,
                default: true
            },
            windStation:{
                type: String,
                default: "center"
            },
            
        },
        data() {
            return {
                wind: undefined,
                zIndex:0,
                windBorder:'',
                windId:""
            }
        },
        methods: {
            currentClick(){
                // this.$store.dispatch('saveWindGuid', this.windId); /// 调用store的stve方法 保存当前页面的 this.guid
                var me = this;
                me.zIndex += 1000;
                me.windBackground = '#052c6d';
            },
            //窗口拖拽
            move(e) {
                if (!this.drage) return;
                this.wind = this.wind ? this.wind : e.target.offsetParent;
                let odiv = this.wind; // 获取目标元素
                //计算出鼠标相对点击元素的位置,e.clientX获取的是鼠标的位置，OffsetLeft是元素相对于外层元素的位置
                let x = e.clientX - odiv.offsetLeft;
                let y = e.clientY - odiv.offsetTop;
                document.onmousemove = e => {
                    // 获取拖拽元素的位置
                    let left = e.clientX - x;
                    let top = e.clientY - y;
                    this.positionX = left;
                    this.positionY = top;
                    // 把拖拽元素 放到 当前的位置
                    if (left <= 0) {
                        left = 0;
                    } else if ( left >= 3840 - odiv.offsetWidth ) {
                        //document.documentElement.clientWidth 屏幕的可视宽度
                        left = 3840 - odiv.offsetWidth;
                    }
                    // } else if ( left >= document.documentElement.clientWidth - odiv.offsetWidth ) {
                    //     //document.documentElement.clientWidth 屏幕的可视宽度
                    //     left = document.documentElement.clientWidth - odiv.offsetWidth;
                    // }

                    if (top <= 0) {
                        top = 0;
                    } else if ( top >= document.documentElement.clientHeight - 50 ) {
                        // document.documentElement.clientHeight 屏幕的可视高度
                        top = document.documentElement.clientHeight - 50;
                    }
                    // } else if ( top >= document.documentElement.clientHeight - odiv.offsetHeight ) {
                    //     // document.documentElement.clientHeight 屏幕的可视高度
                    //     top = document.documentElement.clientHeight - odiv.offsetHeight;
                    // }
                    odiv.style.left = left + "px";
                    odiv.style.top = top + "px";
                };
                // 为了防止 火狐浏览器 拖拽阴影问题
                document.onmouseup = e => {
                    document.onmousemove = null;
                    document.onmouseup = null;
                };
            },
            //窗口关闭
            close() {
                this.wind = this.wind ? this.wind : e.target.offsetParent;
                // this.wind.remove();
            },
            onSelected(e) {
                this.wind = e.target.offsetParent;
            },
            center(width=200, height=150){
                let wind = $(this.$refs.wind);
                wind.css("position","fixed");
                wind.css("top", Math.max(0, (($(window).height() - height) / 2) + $(window).scrollTop()) + "px");
                wind.css("left", Math.max(0, (($(window).width() - width) / 2) + $(window).scrollLeft()) + "px");
            },
            left(width=200, height=150){
                let wind = $(this.$refs.wind);
                wind.css("position","fixed");
                // wind.css("top", Math.max(0, (($(window).height() - height) / 2) + $(window).scrollTop()) + "px");
                // wind.css("left", Math.max(0, 50 + $(window).scrollLeft()) + "px");
                wind.css("top", Math.max(0, 400 + $(window).scrollTop()) + "px");
                wind.css("left", Math.max(0, 900 + $(window).scrollLeft()) + "px");
            },
            right(width=200, height=150){
                let wind = $(this.$refs.wind);
                wind.css("position","fixed");
                wind.css("top", Math.max(0, (($(window).height() - height) / 2) + $(window).scrollTop()) + "px");
                wind.css("left", Math.max(0, ($(window).width() - width - 50) + $(window).scrollLeft()) + "px");
            },
            location(left, top){
                let wind = $(this.$refs.wind);
                wind.css("position","fixed");
                wind.css("top", top + "px");
                wind.css("left", left + "px");
            },
            positions(){
                let wind = $(this.$refs.wind);
                wind.css("position","fixed");
                wind.css("left", "900px");
                wind.css("top", "200px");
            }
        },
        mounted () {
            console.log(this.windStation)
            if(this.windStation === 'left'){
                this.positions()
            }else if(this.windStation === 'center'){
                this.center();
            }
        },
        created(){
            var me = this;
            this.windId = this.guid.newGUID();
            // alert(this.guid)
        },
        computed: {
            ...mapGetters([
                'windGuid'
            ])
        },
    }
</script>

<style lang="scss" scoped>

.wind {
  position: fixed;
  background: rgba(0, 15, 40, 0.9);
  left: 0;
  top: 0;
  min-width: 200px;
  min-height: 150px;
}

.header {
  height: 30px;
  width: 100%;
  cursor: move;
  background: rgba(0, 15, 40, 0.75);
  border-bottom: 1px #fbf6f640 solid;
}
.title {
  float: left;
  color: #dddddd;
  padding: 5px 10px;
  font-size: 15px;
  width: auto;
}
.controls{
    color: #fff;
    i{
        float: right;
        margin: 4px 1px;
        padding: 4px;
        cursor: pointer;
        color: #fff;
        border: 1px solid #2d5fde00;
    }
    i:hover{
        background: #2d5fde30;
    }

    .selected{
        border: 1px solid #2d5fde;
        color: 1px solid #2d5fde;
    }
}

.close {
  float: right;
  margin: 4px 4px 0 1px;
  padding: 5px;
  cursor: pointer;
  color: #fff;
}

.close:hover {
    background: #2d5fde30;
}

.content{
  min-height: 200px;
  max-height: 600px;
  width: 100%;
  color: #fff;
  font-size:16px; 
  text-align: left;
//   text-indent: 10px;
  line-height: 25px;
}
.firstStyle{
    z-index: 9;
    opacity: 1;
    border: 1px solid #2d60de;
}
.endStyle{
    z-index: 0;
    opacity: 0.85;
    border: 1px solid #fbf6f640;
}

.info{
    background: #0099ff33;
}
</style>