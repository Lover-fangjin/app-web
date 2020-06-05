<template>
    <div class="wrap flex">
        <Header />
        <router-view/>
        <VipInfo />
        <Hotkey :class="windShow ? 'right-510' : 'right-10'" />
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import {setbaimo, clearAll, setAreaLine} from '../earth.js';
    import { drawJsonArea, hidEntityByName, removeEntityByType, lookAndFlyPoint } from '@/util/common3d.js'
    import Header from './Header'
    import Poi from './components/poi/Poi.vue';
    import VipInfo from './components/VipInfo.vue';
    import Hotkey from './components/Hotkey.vue'
    
    export default {
        computed: {
            ...mapGetters([
                'currentArea','windShow'
            ])
        },
        components: {
            Header,
            VipInfo,
            Hotkey
        },
        mounted () {
            let me = this;
            this.$nextTick(()=>{
                var _viewer = this.$root.viewer;
                clearAll(_viewer);
                drawJsonArea(_viewer, "static/json/duty/beijin.json", []).then((entities) => {
                    console.log('北京各区边界载完成！')
                    me.$root.areaEntities = entities;
                    _viewer.flyTo(entities.values, {
                        duration: 5,
                        offset: {
                            heading: Cesium.Math.toRadians(0.0),
                            pitch: Cesium.Math.toRadians(-90)
                        }
                    });
                });
                this.right = me.$route.name === 'index';
            });
            // debugger
        },
        watch: {
            'currentArea'(area) {
                let me = this, _viewer = me.$root.viewer;
                if(area.type === '1'){
                    _viewer.flyTo(me.$root.areaEntities.values, {
                        duration: 2,
                        offset: {
                            heading: Cesium.Math.toRadians(0.0),
                            pitch: Cesium.Math.toRadians(-90)
                        }
                    });
                } else if(area.type === '2'){
                    let _entities = me.$root.areaEntities.values.filter(item => { return item.name === area.name })
                     _viewer.flyTo(_entities, {
                        duration: 2,
                        offset: {
                            heading: Cesium.Math.toRadians(0.0),
                            pitch: Cesium.Math.toRadians(-90)
                        }
                    });
                } else if(area.type === '3'){
                    if(area.lon === null || area.lat === null) { return; }
                    lookAndFlyPoint(_viewer, parseFloat(area.lon), parseFloat(area.lat), 0, 10000, -90);
                }
            }
        },
    }
</script>

<style lang="scss" scoped>
    @import "../../assets/style/ztman.scss";
    .wrap{
        width:100%;
        height:100%;
        min-height: 600px;
        overflow: hidden;
    }
    .flex {
        display:flex;
        display:-webkit-box;
        display:-moz-box;
        display:-moz-box;
    }

    .right-510{
        position: absolute;
        top: 90px;
        right: 510px;
        z-index: 9;
    }

    .right-10{
        position: absolute;
        top: 90px;
        right: 10px;
        z-index: 9;
    }
</style>

<style lang="scss">
.cesium-viewer-toolbar {
    display: none !important;
}
.cesium-viewer-fullscreenContainer {
    display: none !important;
}
</style>