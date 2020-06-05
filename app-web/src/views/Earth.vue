<template>
    <div style="width:100%; height:100%;">
        <div id="earth" class="layout-div" style="display: block;"></div>
        <router-view />
    </div>
</template>

<script>
//  import { initEarth } from './earth'
// import Duty from './index'
import { getCamersPosition } from '@/util/common3d.js'
import { addParabola } from './earth.js'

export default {
    mounted () {
        this.initEarth('earth');
    },

    methods: {
        
        initEarth(id) {
            // 默认指向中国
            Cesium.Camera.DEFAULT_VIEW_RECTANGLE = Cesium.Rectangle.fromDegrees(118.0, 27.0, 123.0, 31.0);
            Cesium.Camera.DEFAULT_VIEW_FACTOR = 1.0;
            var _viewer = ysc.createNormalCesium(id, {
                //添加修改属性。
                globeLight:true//全球随时间变化的光照
                ,globalImagery:"高德"//天地图、谷歌、高德、arcGis、百度
                ,globalImageryBrightness:0.25 //影像的透明度
                // ,globalLabel:"天地图"//天地图、高德
                // ,globalLabelBrightness:0.75//影像的透明度
                ,defaultKey:"19b72f6cde5c8b49cf21ea2bb4c5b21e"//天地图的key; 当用天地图时，默认是这个
                ,contextOptions: {
                    id: "cesiumCanvas",
                    webgl: {
                        preserveDrawingBuffer: true
                    }
                }
            });

            // var tileset = new Cesium.Cesium3DTileset({
            //     url: 'http://192.168.10.120:8088/static/datas/3DTILE/yizhuang_3dtile/tileset.json'
            //     // url: 'http://150.129.138.35:15082/andou1-7/tileset.json'
            // });
            // _viewer.scene.primitives.add(tileset);

            // 'ONLINE':
            // let terrain = new Cesium.CesiumTerrainProvider({
            //     url: Cesium.IonResource.fromAssetId(1),
            //     requestVertexNormals: true,
            //     baseLayerPicker : false
            // })
            // 'LOCATION':
            // let terrain = new Cesium.CesiumTerrainProvider({
            //     url: 'http://192.168.10.120:8088/static/datas/terrain',
            //     requestVertexNormals: true,
            //     baseLayerPicker : false
            // })
            // _viewer.terrainProvider = terrain;


            _viewer.scene.globe.depthTestAgainstTerrain = false;
            _viewer.scene.postProcessStages.fxaa.enabled = false; //去锯齿 是文字清晰
            _viewer.scene.canvas.id = "cesiumCanvas";
            this.$root.viewer = _viewer;
            
            // // arcgis 深色底图
            // _viewer.imageryLayers.remove(_viewer.imageryLayers.get(0));//可以先清除默认的第一个影像 bing地图影像。 当然不作处理也行
            // let img= _viewer.imageryLayers.addImageryProvider(
            //     new Cesium.ArcGisMapServerImageryProvider({
            //         url : 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetPurplishBlue/MapServer'
            //         ,baseLayerPicker : false
            //     })
            // );
            // img.brightness = 3;
        },
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