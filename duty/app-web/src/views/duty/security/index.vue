<template>
    <div class="secutity-wrap">
        <Left/>
        <CenterWind/>
        <Right/>
    </div>
</template>

<script>
    import Left from './Leftwind/index';
    import Right from './RightWind/index';
    import CenterWind from './centerWind' 
    export default {
        components: {
            Left,CenterWind,Right
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