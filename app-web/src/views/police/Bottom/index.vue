<template>
    <div class="bottom-panel">  
        <div class="item-panel full-screen item-panel-left"></div>
        
    </div>
</template>

<script>

export default {
    components: {
    },
    methods: {
    },
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/index.scss";
.bottom-panel {
    width: calc(60% - 20px);
    height: 240px;
    position: absolute;
    bottom: 35px;
    left: calc(20% + 10px);
    color: white;
    z-index: 5;
    .item-panel{
        width: 100%;
        // background: $panel-background-color;
        @include background_color("panel-background-color");
        position: relative;
    }
    .item-panel:after{
        position: absolute;
        width: 100%;
        content:'';
        height: 2px;
        top: 0;
        left: 0;
        // background: url("../../../assets/hengL.png") no-repeat;
        background-size: 100%;
    }
    .item-panel-left:after{
        // background: url("../../../assets/hengR.png") no-repeat;
        border-top: 1px solid rgba(30,159,229,0.7);
        background-size: 100%;
    }
    .full-screen{
        height: 100%;
    }
}
</style>