import { removeEntityByName, drawJsonArea } from '../util/common3d.js'
import FileSaver from 'file-saver';


export let setArea = ( _viewer, url) => {
    var promise = Cesium.GeoJsonDataSource.load( "static/json/duty/beizangcun.json" );
    promise.then(function(dataSource) {
        _viewer.dataSources.add(dataSource);
        _viewer.flyTo(dataSource.entities.values, {
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

export let clearAll = (_viewer) => {
    _viewer.dataSources.removeAll();
    removeEntityByName(_viewer, 'areaPolygon');
}

export let setAreaLine = (_viewer) => { 

    $.getJSON("static/json/duty/daxin.json").then(res => {
        let coordinates = res.features[0].geometry.coordinates[0]
        let daxin = [];
        coordinates.map(item => {
            daxin.push({"longitude":item[0], "latitude":item[1]});
        })
        /** 二 流动折线**/
        var data2={ //只加入常用的属性，可以在源码中加入其他属性，以下类似。
            flowing:true,
            flowImage: 'static/images/colors-line.png',//飞行线的图片
            options:{
                name: 'yscNoNeedEntity',
                polyline: {
                    // positions: Cesium.Cartesian3.fromDegreesArrayHeights( [
                    //     lon, lat,0, //0 表示高度
                    //     lon -1, lat, 0,
                    //     lon -1, lat - 1, 0,
                    //     lon - 2, lat-1, 0,
                    //     lon - 2, lat -2, 0
                    // ]),
                    positions: daxin,
                    width:5,
                    clampToGround : true,//贴地
                    material: [Cesium.Color.GREEN, 3000],//混合颜色、(红绿混合透明后 就是黄色了)3000秒发射间隔,单纯材质无法展示飞行动态。所以去掉了。
                }
            }
        };
        ysc.creatBrokenLine(_viewer, data2);
    })
    



    // let zInst1=config.zInst1;
    // $.getJSON("static/json/duty/daxin.json").then(res => {
    //     console.log('setAreaLine: ', res);
    //     let coordinates = res.features[0].geometry.coordinates[0]
    //     let daxin = [];
    //     coordinates.map(item => {
    //         daxin.push({"longitude":item[0], "latitude":item[1]});
    //     })
    //     zInst1.ZEntityCollection.addZEntity(new ZGLobe.ZEntity({
    //         id: 'Polyline',
    //         name: 'trail',
    //         type: ZGLobe.Constants.EntityTypes.POLYLINE,
    //         polyline: {
    //           positions:daxin,
    //           arcType: Cesium.ArcType.GEODESIC,
    //           width: 6,
    //           show:true,
    //           material: new ZGLobe.TrailMaterialPropertyX({color: ZGLobe.color.fromCssColor('#f00',1), duration: 4000, image: 'static/images/colors-line.png'})
    //         }
    //     }))
    // }).catch( error => {
    //     console.log(error);
    // });
}