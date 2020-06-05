<template>
    <div class="popwindow">
        <wind :title="title" v-if="videoVisible" >
            <span slot="closeBtn">
                <i class="el-icon-close close"   @click="onWindClose"></i>
            </span>
            <div slot="content" style="">
                <div id="playercontainer"></div>
            </div>
        </wind>
    </div>
</template>

<script>
import { mapGetters } from 'vuex'
import Wind from '@/components/Wind.vue'
export default {
    components: {
        Wind,
    },
    data() {
        return {
            player: null,
            videoVisible: false,
            title: "视频接入"
        }
    },
    mounted() {
    },
    methods: {
        onWindClose() {
            this.player.remove();
            this.videoVisible = false
            this.$store.commit('updateWindGuid', 'none')
        },
        showVideo(url){
            let me = this;
            this.videoVisible = true;
            this.$nextTick(() => {
                setTimeout(() => {
                    me.player = cyberplayer("playercontainer").setup({
                        width: 400,
                        height: 300,
                        file: url,
                        autostart: true,
                        stretching: "uniform",
                        volume: 100,
                        controls: true,
                        rtmp: {
                            reconnecttime: 5, // rtmp直播的重连次数
                            bufferlength: 1 // 缓冲多少秒之后开始播放 默认1秒
                        },
                        ak: "gC4c68fZAyFKhKgjjFWIhyeNDC0V9x2n"
                    });
                }, 200);
            })
        }
    },
    computed: {
        ...mapGetters([
            'windGuid'
        ])
    },
    watch: {
        windGuid(video) {
            if(video !== 'none' && !this.videoVisible) {
                console.log('video: ', video.url);
                this.showVideo(video.url);
                this.title = video.name
            }
        }
    },
}
</script>

<style lang="scss" scoped>

.popwindow{
    position: relative;
    z-index: 999;
}

.close{
    color: #fff;
    float: right;
}
</style>

<style lang="scss">

    #videoInfo {
        min-width: 300px;
        height: auto;
        position: fixed;
        display: block;

        img {
            width: 100%;
            height: 120px;
        }
        .content{
            z-index: 2;
            padding: 10px;
            border: 1px solid #fff;
            background-color: rgba(21,44,76,1);
            position: sticky;
            min-height: 100px;
        }
    }

    .zt-popwin-close {
        position: absolute;
        top: 5px;
        right: 10px;
        cursor: pointer;
        background: transparent;
        width: 12px;
        height: 12px;
        z-index: 9;
        i{
            color: #fff;
        }
    }

    .zt-popwin-arrow {
        position: absolute;
        bottom: -5px;
        left: calc(50% - 5px);
        overflow: hidden;
        width: 10px;
        height: 10px;
        background: #556fa5;
        /* box-shadow: 0 3px 14px rgba(255,0,0,.4); */
        transform: rotate(45deg);
        z-index: 0;
    }
</style>