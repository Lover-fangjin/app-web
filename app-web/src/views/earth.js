import { removeEntityByName, drawJsonArea } from '@/util/common3d.js'
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

export let setbeizangbaimo = (_viewer) => {
    var tileset = _viewer.scene.primitives.add(new Cesium.Cesium3DTileset({
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

    _viewer.scene.camera.changed.addEventListener(function(){
        //获取当前相机高度
        var height = Math.ceil(_viewer.camera.positionCartographic.height); //取整数
        if(height >= 100 && height <= 15000){
            tileset.show=true;
        }
        else{
            tileset.show=false;
        }
    })
    console.log('tileset: ', tileset)
}

export let setyzbaimo = (_viewer) => {
    var tileset = _viewer.scene.primitives.add(new Cesium.Cesium3DTileset({
            url:"static/3dtiles/yz_baimo/tileset.json",
    }));
    tileset.name="yz_baimo";
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
    //  tileset.style = new Cesium.Cesium3DTileStyle({
    //    color: {
    //          conditions: [
    //             //  ['${height} >= 300', 'rgba(45, 0, 75, 0.5)'],
    //             //  ['${height} >= 200', 'rgba(102, 71, 151,0.5)'],
    //             //  ['${height} >= 100', 'rgba(170, 162, 204,0.5)'],
    //             ['${fooler} >= 10', 'rgba(0,0,255, 0.5)'],
    //             ['${fooler} >= 5', 'rgb(65,105,225)'],
    //             ['${fooler} >= 2', 'rgb(30,144,255)'],
    //             ['true', 'rgb(100,149,237 )']
    //         ]
    //     },
    //     show : true,
    //     name: 'baimo'
    // });

    _viewer.scene.camera.changed.addEventListener(function(){
        //获取当前相机高度
        var height = Math.ceil(_viewer.camera.positionCartographic.height); //取整数
        if(height >= 100 && height <= 2000){
            tileset.show=true;
        }
        else{
            tileset.show=false;
        }
    })
    console.log('tileset: ', tileset)
}

/**
 * 抛物线
 * @param data
 */
export let addParabola = function(_viewer, data) {
    let center = data.center;//起始点
    let cities = data.points;//可以为多组哦！
    if(data.flowing){
        initPolylineTrailLinkMaterialProperty(data);
        data.options.polyline.material = new Cesium.PolylineTrailLinkMaterialProperty(data.options.polyline.material,data.options.polyline.interval);
    }
    for (let j = 0; j < cities.length; j++) {
        let points = parabolaEquation({ pt1: center, pt2: cities[j], height: data.height, num: 100 });
        let pointArr = [];
        for (let i = 0; i < points.length; i++) {
            pointArr.push(points[i][0],points[i][1],points[i][2]);
        }
        data.options.polyline.positions=Cesium.Cartesian3.fromDegreesArrayHeights(pointArr)
        _viewer.entities.add(data.options);
    }
}


    //流动特效
    function initPolylineTrailLinkMaterialProperty(data){
        function PolylineTrailLinkMaterialProperty(color, duration) {
            this._definitionChanged = new Cesium.Event();
            this._color = undefined;
            this._colorSubscription = undefined;
            this.color = color;
            this.duration = duration;
            this._time = (new Date()).getTime();
        }
        Cesium.defineProperties(PolylineTrailLinkMaterialProperty.prototype, {
            isConstant: {
                get: function () {
                    return false;
                }
            },
            definitionChanged: {
                get: function () {
                    return this._definitionChanged;
                }
            },
            color: Cesium.createPropertyDescriptor('color')
        });
        PolylineTrailLinkMaterialProperty.prototype.getType = function (time) {
            return 'PolylineTrailLink';
        }
        PolylineTrailLinkMaterialProperty.prototype.getValue = function (time, result) {
            if (!Cesium.defined(result)) {
                result = {};
            }
            result.color = Cesium.Property.getValueOrClonedDefault(this._color, time, Cesium.Color.WHITE, result.color);
            result.image = Cesium.Material.PolylineTrailLinkImage;
            result.time = (((new Date()).getTime() - this._time) % this.duration) / this.duration;
            return result;
        }
        PolylineTrailLinkMaterialProperty.prototype.equals = function (other) {
            return this === other ||
                (other instanceof PolylineTrailLinkMaterialProperty &&
                    Property.equals(this._color, other._color))
        };
        Cesium.PolylineTrailLinkMaterialProperty = PolylineTrailLinkMaterialProperty;
        Cesium.Material.PolylineTrailLinkType = 'PolylineTrailLink';
        Cesium.Material.PolylineTrailLinkImage = data.flowImage;//图片
        Cesium.Material.PolylineTrailLinkSource = "czm_material czm_getMaterial(czm_materialInput materialInput)\n\
                                                       {\n\
                                                            czm_material material = czm_getDefaultMaterial(materialInput);\n\
                                                            vec2 st = materialInput.st;\n\
                                                            vec4 colorImage = texture2D(image, vec2(fract(st.s - time), st.t));\n\
                                                            material.alpha = colorImage.a * color.a;\n\
                                                            material.diffuse = (colorImage.rgb+color.rgb)/2.0;\n\
                                                            return material;\n\
                                                        }";
        // material.alpha:透明度;material.diffuse：颜色;
        Cesium.Material._materialCache.addMaterial(Cesium.Material.PolylineTrailLinkType, {
            fabric: {
                type: Cesium.Material.PolylineTrailLinkType,
                uniforms: {
                    color: new Cesium.Color(1.0, 0.0, 0.0, 0.5),
                    image: Cesium.Material.PolylineTrailLinkImage,
                    time: 0
                },
                source: Cesium.Material.PolylineTrailLinkSource
            },
            translucent: function (material) {
                return true;
            }
        });
    }
//抛物线方程
function parabolaEquation(options, resultOut) {
    //方程 y=-(4h/L^2)*x^2+h h:顶点高度 L：横纵间距较大者
    const h = options.height && options.height > 5000 ? options.height : 5000;
    const L = Math.abs(options.pt1.lon - options.pt2.lon) > Math.abs(options.pt1.lat - options.pt2.lat) ? Math.abs(options.pt1.lon - options.pt2.lon) : Math.abs(options.pt1.lat - options.pt2.lat);
    const num = options.num && options.num > 50 ? options.num : 50;
    const result = [];
    let dlt = L / num;
    if (Math.abs(options.pt1.lon - options.pt2.lon) > Math.abs(options.pt1.lat - options.pt2.lat)) {//以lon为基准
        const delLat = (options.pt2.lat - options.pt1.lat) / num;
        if (options.pt1.lon - options.pt2.lon > 0) {
            dlt = -dlt;
        }
        for (let i = 0; i < num; i++) {
            const tempH = h - Math.pow((-0.5 * L + Math.abs(dlt) * i), 2) * 4 * h / Math.pow(L, 2);
            const lon = options.pt1.lon + dlt * i;
            const lat = options.pt1.lat + delLat * i;
            result.push([lon, lat, tempH]);
        }
    } else {//以lat为基准
        let delLon = (options.pt2.lon - options.pt1.lon) / num;
        if (options.pt1.lat - options.pt2.lat > 0) {
            dlt = -dlt;
        }
        for (let i = 0; i < num; i++) {
            const tempH = h - Math.pow((-0.5 * L + Math.abs(dlt) * i), 2) * 4 * h / Math.pow(L, 2);
            const lon = options.pt1.lon + delLon * i;
            const lat = options.pt1.lat + dlt * i;
            result.push([lon, lat, tempH]);
        }
    }
    if (resultOut !== undefined) {
        resultOut = result;
    }
    // 落地
    result.push([options.pt2.lon,options.pt2.lat,options.pt2.height || 0])
    return result;
}