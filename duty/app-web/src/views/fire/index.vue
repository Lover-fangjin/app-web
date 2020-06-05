<template>
    <div class="wrap flex">
        <Header />
        <Bottom />
        <router-view/>
        <Poi v-if="features.length > 0" :features="features" :parent="project" />
        <Poi v-if="sitesInfo.length > 0" :features="sitesInfo" :parent="site" />
        <watch />
        <Security />
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import {setArea, setbaimo, clearAll} from '../earth.js';
    import Bottom from './Bottom';
    import Header from './Header'
    import Poi from './components/poi/index.vue';
    import Watch from './components/Watch.vue';
    import Security from './security/index';
    
    export default {
        components: {
            Bottom,
            Header,
            Poi,
            Watch,
            Security
        },
        data() {
            return {
                features: [],
                sitesInfo: [],
                project: 'project_group',
                site: 'site_group',
                proj_entity: undefined,
                site_entity: undefined,
            }
        },
        mounted () {
            let me = this;
            this.$nextTick(()=>{
                clearAll();
                setArea();
                setbaimo(); 

                let viewer = config.zInst1.viewer;
                let projectId = this.guid.newGUID();
                let siteId = this.guid.newGUID();
                me.proj_entity = viewer.entities.add({
                    id: projectId,
                    type: me.project,
                });
                me.site_entity = viewer.entities.add({
                    id: siteId,
                    type: me.site,
                });
                me.repostDate();
            })
        },
        methods: {
            repostDate() {
                let me = this;
                let viewer = config.zInst1.viewer;
                me.$api.getAllSite().then(res =>{
                    if(res.resultCode === 200){
                        me.features = res.result;
                        me.$root.siteInfos = me.features;
                        me.features.map(feature => {
                            me.sitesInfo = me.sitesInfo.concat(feature.sites)
                        })
                        viewer.scene.camera.changed.addEventListener(function(){
                            //获取当前相机高度
                            var height = Math.ceil(viewer.camera.positionCartographic.height); //取整数
                            if(me.proj_entity === undefined){
                                me.proj_entity = getParentEnitty(me.project);
                            }
                            if(me.site_entity === undefined){
                                me.site_entity = getParentEnitty(me.site);
                            }
                            if(height >= 10 && height <= 13000){
                                if( me.proj_entity !== null ){ 
                                    me.proj_entity.show = false; 
                                }
                                if( me.site_entity !== null ){ 
                                    me.site_entity.show = true; 
                                }
                            } else if( height > 13000 ){
                                if( me.proj_entity !== null ){ 
                                    me.proj_entity.show = true; 
                                }
                                if( me.site_entity !== null ){ 
                                    me.site_entity.show = false; 
                                }
                            }
                        });
                    }
                });
            },
        },
        destroyed () {
            ;
        },
    }
</script>

<style lang="scss" scoped>
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
</style>

<style lang="scss">
.cesium-viewer-toolbar {
    display: none !important;
}
</style>