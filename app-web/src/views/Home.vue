<template>
    <div class="wrap flex">
        <Header @handleClick='handleClick' :btnName ="btnName"/>
        <router-view/>
        <Footer />
        <Popwindow />
    </div>
</template>

<script>
    import { setbeizangbaimo, setyzbaimo, clearAll, addParabola } from './earth.js';
    import { drawJsonArea, goAngleView, HDdrawJsonArea } from '@/util/common3d.js'
    import Header from '@/components/Header.vue';
    import Footer from '@/components/Footer.vue';
    import Popwindow from './components/Popwindow.vue';
    
    export default {
        components: {
            Header,
            Footer,
            Popwindow,
        },
        mounted () {
            let me = this;
            this.$nextTick(()=>{
                me.initArea();
            })
        },
        data() {
            return {
                btnName: "福组件船值"
            }
        },
        methods: {
            handleClick(e){
                console.log('父组件收到',e)
            },
            initArea(){
                let me = this;
                let _viewer =me.$root.viewer;
                clearAll(_viewer);
                
                var fill=new Cesium.Color(76 / 255, 171 / 255, 206 / 255, 0.05);
                var stroke=new Cesium.Color(17/ 255, 214 / 255, 192 / 255, 1);
                var color={fill: fill, stroke:stroke};
                var distanceDisplayCondition=new Cesium.DistanceDisplayCondition(3500, 50000);
                HDdrawJsonArea(_viewer, "static/json/yz/yzpq_new.json", [],color,distanceDisplayCondition).then((entities) => {
                        console.log('亦庄边界载完成！');
                        _viewer.scene.camera.changed.addEventListener(function(){
                        //获取当前相机高度
                        var height = Math.ceil(_viewer.camera.positionCartographic.height); //取整数
                        entities.values.map(entity => {
                            entity.show = height >= 2000 ? true : false;
                        })
                });
                });

                fill=new Cesium.Color(76 / 255, 171 / 255, 206 / 255, 0.05);
                stroke=new Cesium.Color(15 / 255, 171 / 255, 93 / 255, 1);
                color={fill:fill,stroke:stroke};
                distanceDisplayCondition=new Cesium.DistanceDisplayCondition(0, 5000)
                HDdrawJsonArea(_viewer, "static/json/yz/56_xiaoqu_gaode.json", [],color,distanceDisplayCondition).then((entities) => {
                    console.log('亦庄边界载完成！');
                    _viewer.scene.camera.changed.addEventListener(function(){
                        //获取当前相机高度
                        var height = Math.ceil(_viewer.camera.positionCartographic.height); //取整数
                        entities.values.map(entity => {
                            entity.show = height < 6500 ? true : false;
                        })
                    });
                });

                let info = { ...config.startViewer.poisiton, ...config.startViewer.euler };
                goAngleView(_viewer, info);
                setyzbaimo(_viewer);

                
                let img= _viewer.imageryLayers.addImageryProvider(
                    new Cesium.ArcGisMapServerImageryProvider({
                        url : 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetPurplishBlue/MapServer'
                        ,baseLayerPicker : false
                    })
                );
                img.brightness = 3;

                window.document.documentElement.setAttribute( "data-theme", 'dark' );
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
    #date-btns {
        position: absolute;
        top: 85px;
        left: calc( 20% + 5px );
        z-index: 4;
    }
</style>

<style lang="scss">
@import "@/assets/style/_handle.scss";
.cesium-viewer-toolbar {
    display: none !important;
}
.cesium-viewer-fullscreenContainer {
    display: none !important;
}
.el-message-box {
    @include background_color("header-background-color");

    .el-message-box__header {
        color: #fff !important;
    }
}
.el-notification{
    background-color: #0f254ef0 !important;
    border: 1px solid rgba(30,159,229,0.7) !important;
    padding: 10px 20px 15px 10px !important;
    border-radius: 5px !important;
}
.el-notification__title{
    color: #ffffff !important;
    font-weight: 400 !important;
}
.el-notification__content {
    color: #ffffff !important;
}
.el-notification__closeBtn{
    top: 10px !important;
    right: 10px !important;
    color: #ffffff !important;
}
.el-notification__group {
    margin-left: 10px !important;
}
</style>