<template>
    <div class="wrap flex">
        <Header />
        <router-view/>
        <Poi v-if="siteInfos.project.list.length > 0" :info="siteInfos.project" />
        <!-- <Poi v-if="siteInfos.site.list.length > 0" :info="siteInfos.site" /> -->
        <Poi v-if="siteInfos.people.list.length > 0" :info="siteInfos.people" />
        <watch />
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import {setbaimo, clearAll, setAreaLine} from '../earth.js';
    import { drawJsonArea, hidEntityByName } from '@/util/common3d.js'
    import Header from './Header'
    import Poi from './components/poi/index.vue';
    import Watch from './components/Watch.vue';
    
    export default {
        computed: {
            ...mapGetters([
                'dutyInfos'    
            ])
        },
        components: {
            Header,
            Poi,
            Watch
        },
        data() {
            return {
                proj_entity: undefined,
                site_entity: undefined,
                peop_entity: undefined,
                timer: null,
                siteInfos: {
                    project: {
                        type: 'project_poi',
                        group: 'project_group',
                        list: [],
                        imgs: {
                            defaultImg: 'static/images/duty/project_d.png',
                            activeImg: 'static/images/duty/project_s.png',
                        }
                    },
                    site: {
                        type: 'site_poi',
                        group: 'site_group',
                        list: [],
                        imgs: {
                            defaultImg: 'static/images/duty/site_d.png',
                            activeImg: 'static/images/duty/site_s.png',
                        }
                    },
                    people: {
                        type: 'people_poi',
                        group: 'people_group',
                        list: [],
                        imgs: {
                            defaultImg: 'static/images/duty/people_d.png',
                            activeImg: 'static/images/duty/people_s.png',
                        }
                    }
                },
            }
        },
        mounted () {
            let me = this;
            this.$nextTick(()=>{
                clearAll();
                // setbaimo(); 

                let viewer = config.zInst1.viewer;
                drawJsonArea(viewer, "static/json/china/beijing.json", []).then((entities) => {
                    console.log('北京各区边界载完成！')
                    me.$root.areaEntities = entities;
                    viewer.flyTo(entities.values, {
                        duration: 5,
                        offset: {
                            heading: Cesium.Math.toRadians(0.0),
                            pitch: Cesium.Math.toRadians(-90)
                        }
                    });
                    setAreaLine();
                    // hidEntityByName(viewer, '大兴区')
                });

                me.initLayers();
                me.repostDate();
                // me.roundRobin();
            })
        },
        methods: {
            repostDate() {
                let me = this;
                let viewer = config.zInst1.viewer;
                me.$api.getAllSite().then(res =>{
                    if(res.resultCode === 200){
                        me.$store.commit('updateSiteInfos', res.result);

                        let projects = res.result;
                        me.siteInfos.project.list = projects;

                        let sites = [];
                        projects.map(feature => {
                            sites = sites.concat(feature.sites)
                        })
                        me.siteInfos.site.list = sites;
                    }
                });
            },
            initLayers(){
                let me = this;
                let viewer = config.zInst1.viewer;

                let projectId = this.guid.newGUID();
                let siteId = this.guid.newGUID();
                let peopleId = this.guid.newGUID();
                me.proj_entity = viewer.entities.add({
                    id: projectId,
                    group: me.siteInfos.project.group,
                });
                me.site_entity = viewer.entities.add({
                    id: siteId,
                    group: me.siteInfos.site.group,
                });
                me.peop_entity = viewer.entities.add({
                    id: peopleId,
                    group: me.siteInfos.people.group,
                });
                viewer.scene.camera.changed.addEventListener(function(){
                    //获取当前相机高度
                    var height = Math.ceil(viewer.camera.positionCartographic.height); //取整数
                    if(me.proj_entity === undefined){
                        me.proj_entity = getParentEnitty(me.siteInfos.project.group);
                    }
                    if(me.site_entity === undefined){
                        me.site_entity = getParentEnitty(me.siteInfos.site.group);
                    }
                    if(me.site_entity === undefined){
                        me.site_entity = getParentEnitty(me.siteInfos.people.group);
                    }
                    me.peop_entity.show = height >= 10 && height <= 5000 ? true : false; 
                    me.site_entity.show = height >= 100 && height <= 10000 ? true : false; 
                    me.proj_entity.show = height > 10000 && height <= 30000 ? true : false; 
                });
            },
            // 接口轮循 
            roundRobin() {
                let me = this;
                let eParams = { pageNum: 1, pageSize: 999 }
                me.timer = setInterval(() => { 
                    me.$api.getAllEvent(eParams).then(res =>{
                        if(res.resultCode === 200){
                            me.$store.commit('updateEventlist', res.result.list);
                        }
                    })
                    me.$api.getAllSite().then(res =>{
                        if(res.resultCode === 200){
                            me.$store.commit('updateSiteInfos', res.result);
                        }
                    })
                    me.$api.getDutyNum().then(res =>{
                        if(res.resultCode === 200){
                            this.$store.commit('updateDutyInfos', res.result.all);
                        }
                    });
                }, 30000);
            }
        },
        destroyed () {
            clearInterval(this.timer);
        },
        watch: {
            'dutyInfos'(value) {
                let peoples = value.filter(people => { return people.isDuty == '1' })
                this.siteInfos.people.list = peoples;
            }
        }
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
.cesium-viewer-fullscreenContainer {
    display: none !important;
}
</style>