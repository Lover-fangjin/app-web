<template>
    <div class="feacture">
        <img :src="imgUrl" alt="">
    </div>
</template>

<script>
export default {
    props: {
        imgUrl:{
            type: String,
            default: "static/images/duty/qiehuan.png"
        },
        
    },
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/index.scss";
.feacture{
    @include background_color("hotkey-background-color");
    border: 1px solid $duty-border;
    width: 35px;
    height: 35px;
    border-radius: 5px;
    line-height: 35px;
    margin-bottom: 10px;
    cursor: pointer;
    img{
        vertical-align: middle;
        display: inline-block;
    }
}
.feacture:hover{
    background: $duty-hover
}
</style>