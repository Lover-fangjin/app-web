<template>
    <div class="secutity-wrap">
        <Left />
        <Right />
        <div class="ysc-dynamic-layer" id="site" ref="siteInfo">
            <i class="el-icon-close" style="float: right; padding: 5px;"></i>
            <div class="content"></div>
        </div>
    </div>
</template>

<script>
    import Left from './Leftwind/index.vue';
    import Right from './RightWind/index.vue';
    export default {
        components: {
            Left, Right
        },
        mounted () {
            this.$nextTick(() =>{
                var options = {}, _viewer = this.$root.viewer;
                options.enableZoomControls= true;
                options.enableCompass= true;
                options.enableDistanceLegend= true;
                options.enableCompassOuterRing= true;
                _viewer.extend(Cesium.viewerCesiumNavigationMixin, options);
            })
        },
        destroyed () {
            this.$root.viewer.cesiumNavigation.destroy();
        },
    }
</script>

<style lang="scss" scoped>
.secutity-wrap{
    width: 100%;
    height: calc(100 - 70px);
}

.ysc-dynamic-layer {
    display: none;
    // user-select: none;
    // pointer-events: none;
    pointer-events: painted !important;
    position: fixed;
    top: 0;
    left: 0;
    width: auto;
    height: auto;
    z-index: 99999;
    color: #fff;

    img{
        width: 10px;
        height: 10px;
        float: left;
    }
    .title{
        text-align: center;
        margin-top: -15px;
    }
    .el-icon-close{
        cursor: pointer;
    }
    .el-icon-close:hover{
        color: blue;
    }
}

.hotkey{
  position: absolute;
  top:90px;
  right: 510px;
  z-index: 9;
}
</style>

<style lang="scss">

.compass {
    left: 500px !important;
}
.navigation-controls{
    left: 530px !important;
}
.distance-legend {
    right: 525px !important;
}
</style>