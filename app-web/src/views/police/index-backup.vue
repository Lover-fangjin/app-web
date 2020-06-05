<template>
    <div class="secutity-wrap">
        <Left/>
        <Right/>
        <Bottom />
        <Hotkey class='right-510'/>
        <!-- <Compass /> -->
    </div>
</template>

<script>
    import Left from './Leftwind/index.vue';
    import Right from './RightWind/index.vue';
    import Bottom from './Bottom/index.vue'
    import FileSaver from 'file-saver';
    import Hotkey from '../components/Hotkey.vue';
    // import Compass from '@/components/compass/index.vue'

    export default {
        components: {
            Left,
            Right,
            Bottom,
            Hotkey,
            // Compass
        },
        mounted () {
            let me = this;
            me.$nextTick(() => {
                // me.decoding()
            })

            // $.getJSON("static/json/duty/bzArea.json").then(res => {
            // }).catch( error => {
            //     console.log(error);
            // });
        },
        methods: {
            ajaxPromise (url, type = "get", dataType = "json", data = {f:'pjson'}){
                return new Promise((resovle, reject) => {
                    $.ajax({ 
                        async: true, //同步，异步
                        url: url,
                        type, 
                        dataType, 
                        data, 
                        success:res => { resovle(res) },
                        error:res => { reject(res) }
                    }) 
                })
            },
            formatPosition(_position) {
                // 世界坐标转(笛卡尔坐标)换为经纬度
                let _viewer = this.$root.viewer;
                var ellipsoid=_viewer.scene.globe.ellipsoid;
                var cartesian3 = new Cesium.Cartesian3(_position.x, _position.y, _position.z);//世界坐标/笛卡尔坐标
                var cartographic = ellipsoid.cartesianToCartographic( cartesian3 );
                var lat = Cesium.Math.toDegrees( cartographic.latitude );//cartograhphic.latitude(弧度)并非我们想要的  转化后的才是我们想要的（经纬度），
                var lon = Cesium.Math.toDegrees( cartographic.longitude );
                var alt = cartographic.height;
                return {lon: lon, lat: lat};
            },
            decoding(){
                let me = this;
                me.ajaxPromise('static/json/yz/queryResults.jsonp').then(res => {
                    let _recordFeatures = res.recordsets[0].features;
                    let _areasJson={};
                    _areasJson['name'] = res.recordsets[0].datasetName;_areasJson['type'] = 'FeatureCollection';
                    _recordFeatures.map((fea,index) => {
                        let _feature={}, _properties={};
                        for (var i = 0; i < fea.fieldNames.length; i++) {
                            _properties[fea.fieldNames[i]] = fea.fieldValues[i];
                        }
                        fea.geometry.center = _properties.SMSDRIE;
                        let _center = me.formatPosition({x: _properties.SMSDRIE,y: _properties.SMSDRIS,z: _properties.SMGRANULE});
                        _properties['center'] = _center
                        _feature['properties'] = _properties;
                    })
                }, err => {
                    console.log("err promise: ", err);
                })
            }
        },

    }
    
</script>

<style lang="scss" scoped>
.right-510{
    position: absolute;
    top: 85px;
    right: calc( 20% + 10px );
    z-index: 9;
}
.right-10{
    position: absolute;
    top: 90px;
    right: 10px;
    z-index: 9;
}
</style>