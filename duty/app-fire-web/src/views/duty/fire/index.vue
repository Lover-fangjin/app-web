<template>
    <div class="secutity-wrap">
        <Left/>
        <Right/>
    </div>
</template>

<script>
    import Left from './Leftwind/index';
    import Right from './RightWind/index';
    export default {
        components: {
            Left, Right
        },
    }
</script>

<style lang="scss" scoped>
.secutity-wrap{
    width: 100%;
    // position: absolute;
    height: calc(100 - 70px);
}
</style>