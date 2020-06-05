import { removeEntityByName, drawJsonArea } from '../util/common3d.js'
import FileSaver from 'file-saver';

export let initEarth = (id) => {
    Cesium.Ion.defaultAccessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI3YzU5YjczZC03ZWY5LTQ0OTYtOTRhZi02ZTYwMWY2NjgxYzUiLCJpZCI6NzA0Niwic2NvcGVzIjpbImFzciIsImdjIl0sImlhdCI6MTU0ODEzNzg2MH0.lJ9W6aJEhWmB9KLTr6o2NmDUQFHXs0i9RZ_DE-_ji3I'
                
//     // 默认指向中国
    Cesium.Camera.DEFAULT_VIEW_RECTANGLE = Cesium.Rectangle.fromDegrees(118.0, 27.0, 123.0, 31.0);
    Cesium.Camera.DEFAULT_VIEW_FACTOR = 1.0;
    var zInst1 = new ZGLobe.Viewer(id, {
        showFPS: false,
        shadows: false,
        infoBox: false,
        vrButton: false,
        show3DCoordinates: true,
        contextOptions: {
            webgl:{
            preserveDrawingBuffer: true
            }
        }
    })

    zInst1.pickControl.setCanPick(true)
    zInst1.viewer.scene.globe.depthTestAgainstTerrain = false;
    
    // Cesium.Camera.DEFAULT_VIEW_RECTANGLE = Cesium.Rectangle.fromDegrees(118.0, 27.0, 123.0, 31.0);
    // Cesium.Camera.DEFAULT_VIEW_FACTOR = 3.0;

    config.zInst1 = zInst1
    viewer = config.zInst1.viewer
    viewer.scene.postProcessStages.fxaa.enabled = false; //去锯齿 是文字清晰


    // arcgis 深色底图
    // var url = 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}'
    // 高德底图
    // var url = 'http://webst02.is.autonavi.com/appmaptile?style=6&x={x}&y={y}&z={z}';
    // arcgis 底图
    // var url = 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetGray/MapServer/tile/{z}/{y}/{x}'
    // google 底图
    // var url = 'https://services.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer';

    // var url = "http://mt1.google.cn/vt/lyrs=s&hl=zh-CN&x={x}&y={y}&z={z}&s=Gali";
    // let img = zInst1.objectManager.addImageryLayer('BASEMAP', 'BASEMAP', ZGLobe.Constants.ImageryType.Template, url)
    // img.brightness = 0.5;


    var imgUrl = "http://t0.tianditu.com/img_w/wmts?service=wmts&request=GetTile&version=1.0.0&LAYER=img&tileMatrixSet=w&TileMatrix={TileMatrix}&TileRow={TileRow}&TileCol={TileCol}&style=default&format=tiles&tk=19b72f6cde5c8b49cf21ea2bb4c5b21e";
    let img= viewer.imageryLayers.addImageryProvider(new Cesium.WebMapTileServiceImageryProvider({
        url: imgUrl,
        layer: "tdtBasicLayer",
        style: "default",
        format: "image/jpeg",
        maximumLevel:18, //天地图的最大缩放级别
        tileMatrixSetID: "GoogleMapsCompatible",
        show: false
    }));
    img.brightness = 0.25;

    let labelUrl = "http://t0.tianditu.com/cia_w/wmts?service=wmts&request=GetTile&version=1.0.0&LAYER=cia&tileMatrixSet=w&TileMatrix={TileMatrix}&TileRow={TileRow}&TileCol={TileCol}&style=default.jpg&tk=19b72f6cde5c8b49cf21ea2bb4c5b21e";
    let label= viewer.imageryLayers.addImageryProvider(new Cesium.WebMapTileServiceImageryProvider({
        url:labelUrl,
        layer: "tdtAnnoLayer",
        style: "default",
        maximumLevel:18,//天地图的最大缩放级别
        format: "image/jpeg",
        tileMatrixSetID: "GoogleMapsCompatible",
        show: false
    }));
    label.brightness = 0.5;

    // $.getJSON("static/json/duty/bzArea.json").then(res => {
    //     let navPoints = {};
    //     res.features.map((feature, index) => {
    //         var _points = feature.geometry.coordinates[0].map(coor => { return {longitude: coor[0], latitude: coor[1]}})
    //         navPoints[index + '片区'] = _points;
    //     })
    //     const data = JSON.stringify(navPoints)
    //     const blob = new Blob([data], {type: ''})
    //     FileSaver.saveAs(blob, 'nav.json')
    // }).catch( error => {
    //     console.log(error);
    // });
}

export let setArea = ( url) => {
    let viewer=config.zInst1.viewer;
    var promise = Cesium.GeoJsonDataSource.load( "static/json/duty/beizangcun.json" );
    promise.then(function(dataSource) {
        viewer.dataSources.add(dataSource);
        viewer.flyTo(dataSource.entities.values, {
            duration: 2,
            offset: {
                heading: Cesium.Math.toRadians(0.0),
                pitch: Cesium.Math.toRadians(-90)
            }
        });

        var entities = dataSource.entities.values;
        for (var i = 0; i < entities.length; i++) {
            var entity = entities[i];
            entity.name = 'areaPolygon';
            entity.polygon.outline = true;
            entity.polygon.outlineWidth = 5;
            // entity.polygon.extrudedHeight = 300;
            entity.polygon.outlineColor = new Cesium.Color(76 / 255, 171 / 255, 207 / 255, 1);
            entity.polygon.material = new Cesium.Color(76 / 255, 171 / 255, 206 / 255, 0.02);
        }
        return entities;
    });
}

export let setbaimo = () => {
    let zInst1 = config.zInst1;

    var tileset = zInst1.viewer.scene.primitives.add(new Cesium.Cesium3DTileset({
            url:"static/3dtiles/beizang_baimo/tileset.json",
    }));
    tileset.name="beizang_baimo";
    tileset.readyPromise.then(function(tileset) {
            var longitude = tileset.longitude;
            var latitude = tileset.latitude;
            var height = tileset.height;
            var heading = 0;
            var position = Cesium.Cartesian3.fromDegrees(longitude, latitude, height);
            var mat = Cesium.Transforms.eastNorthUpToFixedFrame(position);
            var rotationX = Cesium.Matrix4.fromRotationTranslation(Cesium.Matrix3.fromRotationZ(Cesium.Math.toRadians(heading)));
            Cesium.Matrix4.multiply(mat, rotationX, mat);
            tileset._root.transform = mat;
        }).otherwise(function(error) {
            console.log(error);
    });
    // var transparentStyle = new Cesium.Cesium3DTileStyle({
    //     //color : "color('gray', 0.9)",
    // });
    // tileset.style=transparentStyle;
     tileset.style = new Cesium.Cesium3DTileStyle({
       color: {
             conditions: [
                //  ['${height} >= 300', 'rgba(45, 0, 75, 0.5)'],
                //  ['${height} >= 200', 'rgba(102, 71, 151,0.5)'],
                //  ['${height} >= 100', 'rgba(170, 162, 204,0.5)'],
                ['${height} >= 198', 'rgba(0,0,255, 0.5)'],
                ['${height} >= 108', 'rgb(65,105,225)'],
                ['${height} >= 20', 'rgb(30,144,255)'],
                ['true', 'rgb(100,149,237 )']
            ]
        },
        show : true,
        name: 'baimo'
    });

    zInst1.viewer.scene.camera.changed.addEventListener(function(){
        //获取当前相机高度
        var height = Math.ceil(viewer.camera.positionCartographic.height); //取整数
        if(height >= 100 && height <= 15000){
            tileset.show=true;
        }
        else{
            tileset.show=false;
        }
    })
    console.log('tileset: ', tileset)
}

export let clearAll = () => {
    let viewer=config.zInst1.viewer;
    viewer.dataSources.removeAll();
    removeEntityByName(viewer, 'areaPolygon');
}

let setAreaLine = () => { 
    let zInst1=config.zInst1;
    $.getJSON("static/json/china/daxin.json").then(res => {
        console.log('setAreaLine: ', res);
        let coordinates = res.features[0].geometry.coordinates[0]
        let daxin = [];
        coordinates.map(item => {
            daxin.push({"longitude":item[0], "latitude":item[1]});
        })
        zInst1.ZEntityCollection.addZEntity(new ZGLobe.ZEntity({
            id: 'Polyline',
            type: ZGLobe.Constants.EntityTypes.POLYLINE,
            polyline: {
              positions:daxin,
              arcType: Cesium.ArcType.GEODESIC,
              width: 2,
              show:true,
              material: new ZGLobe.TrailMaterialPropertyX({color: ZGLobe.color.fromCssColor('#f00',1), duration: 4000, image: 'static/images/colors-line.png'})
            }
        }))
    }).catch( error => {
        console.log(error);
    });
}