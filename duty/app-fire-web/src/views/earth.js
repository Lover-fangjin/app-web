import { removeEntityByName, drawJsonArea } from '../util/common3d.js'
import FileSaver from 'file-saver';

export let initEarth = (id) => {
    Cesium.Ion.defaultAccessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI3YzU5YjczZC03ZWY5LTQ0OTYtOTRhZi02ZTYwMWY2NjgxYzUiLCJpZCI6NzA0Niwic2NvcGVzIjpbImFzciIsImdjIl0sImlhdCI6MTU0ODEzNzg2MH0.lJ9W6aJEhWmB9KLTr6o2NmDUQFHXs0i9RZ_DE-_ji3I'
                
    // 默认指向中国
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
    
    config.zInst1 = zInst1
    viewer = config.zInst1.viewer
    viewer.scene.postProcessStages.fxaa.enabled = false; //去锯齿 是文字清晰

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

export let clearAll = () => {
    let viewer=config.zInst1.viewer;
    viewer.dataSources.removeAll();
    removeEntityByName(viewer, 'areaPolygon');
}

export let setAreaLine = () => { 
    let zInst1=config.zInst1;
    $.getJSON("static/json/duty/daxin.json").then(res => {
        console.log('setAreaLine: ', res);
        let coordinates = res.features[0].geometry.coordinates[0]
        let daxin = [];
        coordinates.map(item => {
            daxin.push({"longitude":item[0], "latitude":item[1]});
        })
        zInst1.ZEntityCollection.addZEntity(new ZGLobe.ZEntity({
            id: 'Polyline',
            name: 'trail',
            type: ZGLobe.Constants.EntityTypes.POLYLINE,
            polyline: {
              positions:daxin,
              arcType: Cesium.ArcType.GEODESIC,
              width: 6,
              show:true,
              material: new ZGLobe.TrailMaterialPropertyX({color: ZGLobe.color.fromCssColor('#f00',1), duration: 4000, image: 'static/images/colors-line.png'})
            }
        }))
    }).catch( error => {
        console.log(error);
    });
}