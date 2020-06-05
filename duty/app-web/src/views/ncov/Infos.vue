<template>
    
    <div class="info">
        <div style="display: inline-block; width: 100%">
            <div class="infoItem">
                <span style="color: #f56262;">{{count.confirmedCount}}</span>
                <span>确诊</span>
            </div>
            <!-- <div class="infoItem" v-show="currentArea=='china'">
                <span style="color: #e8b77d;">{{count.suspectedCount}}</span>
                <span>疑似</span>
            </div> -->
            <div class="infoItem">
                <div style="display: flex;">
                <span style="color: rgb(127, 127, 127);">{{count.deadCount}}</span>
                <span
                    style="margin-top: 5px; font-size: 12px; color: rgb(127, 127, 127);"
                >({{deathrate}})</span>
                </div>
                <span>死亡</span>
            </div>
            <div class="infoItem">
                <span style="color: green;">{{count.curedCount}}</span>
                <span>治愈</span>
            </div>
        </div>
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';

    export default {
        data() {
            return {
                deathrate: 0,
                count: {
                    confirmedCount: 0,
                    suspectedCount: 0,
                    curedCount: 0,
                    deadCount: 0,
                    updateTime: 0
                },
            }
        },
        mounted () {
            this.updateChart();
        },
        methods: {
            updateChart() {
                this.$ds.loadOverall(this.currentArea).then(data => {
                    console.log(data)
                    this.count = data;
                    this.deathrate =
                    (
                        (this.count.deadCount /
                        (this.count.confirmedCount + this.count.curedCount)) *
                        100
                    ).toFixed(2) + "%";
                });
            }
        },
        watch: {
            "currentArea"(v) {
                this.updateChart();
            }
        },
        computed: {
            ...mapGetters([
            'currentArea'    
            ])
        }
    }
</script>

<style lang="scss" scoped>
    .info {
        color: white;
        width: 100%;
        // margin-top: 12px;
        text-align: center;
        float: left;
        bottom: 30px;
        /* margin-left: 44px; */
        padding-bottom: 20px;
    }
    .text {
        font-size: 24px;
        /* color: #04d8db;*/
        color: white;
        /* text-shadow: 2px 0 2px #0080ff, -2px 0 2px #0080ff, 0px 2px 2px #0080ff,
            0px -2px 2px #0080ff; */
        width: 440px;
        /* margin-left: 42px; */
        text-align: center;
        line-height: 78px;
    }
    .infoItem {
        display: inline-block;
        width: 90px;
    }
    .infoItem span:nth-child(1) {
        display: block;
        font-size: 18px;
        font-weight: 500;
    }
    .origion {
        float: right;
        width: 244px;
        height: 28px;
        background: url(./img/jiayou.png) no-repeat;
        background-size: contain;
        margin-top: 26px;
        margin-right: 384px;
    }
</style>