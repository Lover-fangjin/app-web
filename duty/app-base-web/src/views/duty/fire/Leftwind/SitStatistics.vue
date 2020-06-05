<template>
    <div class="site_wrap">
        <p class="statistics-title">北京市会员企业信息统计 <span class="num">({{total}}家)</span></p>
        <el-breadcrumb separator-class="el-icon-arrow-right" style="padding:10px 0;">
            <el-breadcrumb-item v-for="item in breadcrumb" :key="item.type"> <span @click="onPathClick(item)">{{item.name}}</span> </el-breadcrumb-item>
        </el-breadcrumb>

        <div class="block-group">
            <el-tree
                :data="treeData"
                :props="defaultProps"
                node-key="id"
                accordion
                @node-click="handleNodeClick"
                ref="tree">
                <template slot-scope="{data, node}" >
                    <div @mouseover="onMouseOver(data)" @mouseleave="onMouseLeave()">
                        <span>
                            <i style='color:#ffe080;' :class="node.childNodes.length > 0 ? 'el-icon-folder' : 'el-icon-folder-opened'"></i>
                            <span style="padding-left: 4px;">{{data.name}}</span>
                        </span>
                        <span style='color:#1d99e2;margin-left:10px;'>({{data.count}}家)</span>
                    </div>
                </template>
            </el-tree>
        </div>

        <Poi v-if="layerInfos.district.list.length > 0" :info="layerInfos.district" />
        <Poi :info="layerInfos.street" />
        <Poi :info="layerInfos.company" />
    </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { lookAndFlyPoint } from '@/util/common3d';
import { highlight, unHighlight } from '../../components/poi/poi.js';
import Poi from '../../components/poi/Poi.vue'

var icon_folder = 'el-icon-folder'
var icon_folder_open = 'el-icon-folder-opened'

export default {
    computed: {
        ...mapGetters([
            'currentArea'    
        ])
    },
    components: {
        Poi,
    },
    data () {
        return {
            selected: 'none',
            treeData: [],
            defaultProps: {
                children: 'children',
                label: 'name'
            },
            openAry: [],
            expanded:false,
            breadcrumb:[],
            total: 0,
            district: [],
            street: [],
            layerInfos: {
                district: {
                    type: 'district_poi',
                    group: 'district_group',
                    list: [],
                    imgs: {
                        defaultImg: 'static/images/pois/district_d.png',
                        activeImg: 'static/images/pois/district_s.png',
                    }
                },
                street: {
                    type: 'street_poi',
                    group: 'street_group',
                    list: [],
                    imgs: {
                        defaultImg: 'static/images/pois/street_d.png',
                        activeImg: 'static/images/pois/street_s.png',
                    }
                },
                company: {
                    type: 'company_poi',
                    group: 'company_group',
                    list: [],
                    imgs: {
                        defaultImg: 'static/images/pois/company_d.png',
                        activeImg: 'static/images/pois/company_s.png',
                    }
                }
            },
            dist_entity: undefined,
            stre_entity: undefined,
            comp_entity: undefined,
        };
    },
    mounted () {
        let me = this;
        me.$nextTick(() => {
            me.initLayers();
            me.$api.getCountList().then(res =>{
                me.$root.paths = {}
                if(res.resultCode === 200){
                    let info = res.result.filter(item => {return item.name === '北京市'})[0];
                    me.total = info.count;
                    me.selected = {
                        parent: 'none',
                        id: 'none',
                        type: info.type,
                        name: info.name
                    };
                    me.$root.paths[info.type] = me.selected
                    me.breadcrumb = Object.values(me.$root.paths);
                    me.treeData = info.children;

                    // 区省级别
                    me.layerInfos.district.list = []; 
                    me.layerInfos.street.list = []; 
                    me.layerInfos.district.list = info.children.map(item => {
                        let _item = Object.assign({}, item);
                        return Object.assign(_item, {name: _item.name + '(' + _item.count + '家)'});
                    });
                    me.$root.districtList = info.children;

                }

            })
        })
    },
    methods: {
        handleNodeClick(data, node) {
            let me = this;
            if(data.type === '2'){
                delete me.$root.paths['3'];
                if(node.expanded){
                    me.$root.paths[data.type] = {
                        parent: '1',
                        type: data.type,
                        name: data.name
                    }
                }else{
                    delete me.$root.paths['2'];
                    me.$store.commit('updateCurrentArea', me.$root.paths['1']);
                    me.breadcrumb = Object.values(me.$root.paths);
                    return;
                }
            } else if(data.type === '3'){
                me.$root.paths[data.type] = {
                    parent: '2',
                    type: data.type,
                    name: data.name
                }
            }
            me.$store.commit('updateCurrentArea', data);
            me.breadcrumb = Object.values(me.$root.paths);
        },
        onPathClick(item){
            if( item.type === '3' ) { return; }
            let me = this;
            delete me.$root.paths['3'];
            if(item.type === '1'){
                delete me.$root.paths['2'];
                let nodes = Object.values(me.$refs.tree.store.nodesMap);
                nodes.map(node => {
                    node.expanded = false;
                })
            }
            me.$store.commit('updateCurrentArea', me.$root.paths[item.type]);
            me.breadcrumb = Object.values(me.$root.paths);
        },
        initLayers(){
            let me = this;
            let _viewer = this.$root.viewer;

            let distId = this.guid.newGUID();
            let siteId = this.guid.newGUID();
            let compId = this.guid.newGUID();
            me.dist_entity = _viewer.entities.add({
                id: distId,
                group: me.layerInfos.district.group,
            });
            me.stre_entity = _viewer.entities.add({
                id: siteId,
                group: me.layerInfos.street.group,
            });
            me.comp_entity = _viewer.entities.add({
                id: compId,
                group: me.layerInfos.company.group,
            });
            me.updateVisible()
            _viewer.scene.camera.changed.addEventListener(me.updateVisible);
        },
        updateVisible(){
            let me = this;
            let _viewer = this.$root.viewer;
            //获取当前相机高度
            let height = Math.ceil(_viewer.camera.positionCartographic.height); //取整数
            me.comp_entity.show = height >= 10 && height <= 20000 ? true : false; 
            me.stre_entity.show = height >= 100 && height <= 150000 ? true : false; 
            me.dist_entity.show = height > 30000 && height <= 500000 ? true : false; 
        },
        onMouseOver(data){
            let pName = data.name + '(' + data.count + '家)'
            highlight(this.$root.viewer, pName );
        },
        onMouseLeave(){
            unHighlight(this.$root.viewer)
        },
    },
    watch: {
        'currentArea' (area) {
            let me = this;
            if(area.type === '2' ){
                delete me.$root.paths['3'];
                let nodes = Object.values(me.$refs.tree.store.nodesMap);
                nodes.map(node => {
                    if(node.label === area.name) {
                        node.expanded = true;
                        me.$root.paths[area.type] = {
                            parent: '1',
                            type: area.type,
                            name: area.name
                        }
                    } else {
                        node.expanded = false;
                    }
                })
            } else if (area.type === '3'){
                me.$root.paths[area.type] = {
                    parent: '2',
                    type: area.type,
                    name: area.name
                }
            }
            me.breadcrumb = Object.values(me.$root.paths);
        }
    },
};
</script>
<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";

.site_wrap{
    width: calc(100% - 50px);
    // background: $duty-bg;
    color: white;
    padding: 10px 10px 30px 40px ;
    // overflow-y: auto;
    height: calc(100% - 40px);
    z-index: 8;
    // background-image: url("../../../../assets/hengL.png");
    // background-repeat: no-repeat;
    .statistics-title{
        margin-top: 10px;
        margin: 0;
        font-weight: bold;
        font-size: 16px;
        padding: 5px 0;
    }
    .num{
        color: $duty-color;
    }
    .block-group{
        width: calc(100% -10px);
        height: calc(100% - 40px);
        overflow-y: auto;
        margin-top: 5px;
        padding: 0 10px;
       
    }
}
</style>

<style lang="scss">
.el-breadcrumb{
    padding: 0 !important;
}
.el-breadcrumb__item {
    color: #fff;
    cursor: pointer;
}
.el-breadcrumb__inner {
    color: #fff !important;
}
</style>

