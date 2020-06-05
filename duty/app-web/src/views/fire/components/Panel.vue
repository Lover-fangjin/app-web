<template>
    <div class="wind">
        <slot name="title">
            <p class="title">{{title}}</p>
        </slot>
        <div class="content">
            <slot name="content"></slot>
        </div>
    </div>
</template>

<script>
    export default {
        props: {
            title:{
                type:String,
                default:'我是默认文字'
            }
        },
    }
</script>

<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.wind{
    width: 470px;
    // max-height: 300px;
    background: $duty-bg;
    z-index: 8;
    background-image: url("../../../assets/hengL.png");
    background-repeat: no-repeat;
    // padding: 20px;
}
.title{
    margin-top: 10px;
    margin: 0;
    font-weight: bold;
    font-size: 16px;
    padding: 5px 0;
}
</style>