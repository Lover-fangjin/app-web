<template>
    <div style="width:100%;height:100%;">
        <div id="earth" class="layout-div"></div>
        <router-view />
    </div>
</template>

<script>
 import { initEarth } from './earth'
 import Duty from './duty/index'
 
    export default {

        mounted () {
            console.log('earth !!');
            initEarth('earth');
        },
        components: {

        },
        
    }
</script>

<style lang="scss" scoped>
.layout-div{
    height:100%; 
    position:absolute;
    width: 100%;
    z-index: 1;
}
</style>