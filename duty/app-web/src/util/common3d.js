
/**
 * 生成广告牌POI点方法
 * @param {*} _viewer 
 * @param {*} name 
 * @param {*} data 
 */
export function drawBillboard(_viewer, name, data, type='poi', height=800){
    let viewer = _viewer;
    let billboards = new Cesium.BillboardCollection();
    billboards.name= name;
    billboards.type = type;
    viewer.scene.primitives.add(billboards);
    try{
        data.map((item, index) => {
            let _h = item.hasOwnProperty('height') ? item.height : height;
            billboards.add({
                id: item.id.toString(),
                name: item.name,
                width : 32,
                height : 32, 
                image : item.imgUrl,
                pixelOffset: new Cesium.Cartesian2(0, 32),
                horizontalOrigin: Cesium.HorizontalOrigin.CENTER,
                verticalOrigin: Cesium.VerticalOrigin.BOTTOM,
                position : Cesium.Cartesian3.fromDegrees(parseFloat(item.lng), parseFloat(item.lat), parseFloat(_h)),
            });
        });
    }catch (err){
        console.log("catch error: ", err);
    }
    return viewer;
}

/**
 * 清除广告牌POI点方法
 * @param {*} name 
 */
export let clearBillboard = (name) => {
    let primitives = config.zInst1.viewer.scene.primitives;
    primitives._primitives.map((item, index)=>{
        if( item.name === name){
            primitives.remove(primitives.get(index));
        }
    });
}

export let getParentEnitty = (_group) => {
    let viewer = config.zInst1.viewer;
    let entities = viewer.entities.values;
    let entity = null;
    entities.map(item => {
        if(item.hasOwnProperty('group') && item.group === _group){
            entity =  item;
            return;
        }
    });
    return entity;
}

/**
 * 创建实体POI
 * @author hejin 2019-9-4
 * @param {*} viewer 
 * @param {*} name 实体POI名称
 * @param {id, name, imgUrl, lat, lng, height} infos
 */
export let drawEntityPoi = (viewer, name, infos) => {
    try{
        infos.map(info => {
            let parent = getParentEnitty(info.group);
            viewer.entities.add({
                id: info.id.toString(),
                type: info.hasOwnProperty('type') ?  info.type : 'poi',
                name: name,
                parent: parent,
                imgs: info.imgs,
                position: Cesium.Cartesian3.fromDegrees(parseFloat(info.lng), parseFloat(info.lat), parseFloat(info.height)),
                // point: { //点
                //     pixelSize: 0,
                //     HeightReference: info.height
                // },
                label: { //文字标签
                    text: info.name,
                    font : '12pt monospace',
                    style : Cesium.LabelStyle.FILL_AND_OUTLINE,
                    fillColor: new Cesium.Color(255/255, 255/255, 255/255, 1),
                    outlineColor: new Cesium.Color(1, 1, 1, 0),
                    outlineWidth : 0,
                    showBackground: true,
                    backgroundColor: new Cesium.Color(0, 0, 0, 0),
                    backgroundPadding: new Cesium.Cartesian2(7, 5),
                    pixelOffset : new Cesium.Cartesian2( 0, -55 ),   //偏移量
                    // horizontalOrigin: Cesium.HorizontalOrigin.CENTER,
                    // verticalOrigin : Cesium.VerticalOrigin.BOTTOM, //垂直方向以底部来计算标签的位置
                    distanceDisplayCondition: new Cesium.DistanceDisplayCondition(1, 1000000)
                },
                billboard: { //图标
                    name: info.name,
                    width: 24,
                    height: 24,
                    image : info.imgs.defaultImg,
                    pixelOffset: new Cesium.Cartesian2(0, 0),
                    horizontalOrigin: Cesium.HorizontalOrigin.CENTER,
                    verticalOrigin: Cesium.VerticalOrigin.BOTTOM,
                },
            });
        });
    }catch (err){
        console.log("drawEntityPoi error: ", err);
    }
    return viewer;
}

/**
 * 创建实体文字
 * @param {*} viewer 
 * @param {*} name 
 * @param {*} infos 
 */
export let drawEntiityLabel = (viewer, name, infos) => {
    try{
        infos.map(info => {
            viewer.entities.add({
                id: info.id.toString(),
                name: name,
                position: Cesium.Cartesian3.fromDegrees(parseFloat(info.lng), parseFloat(info.lat), parseFloat(info.height)),
                // point: { //点
                //     pixelSize: 0,
                //     HeightReference: 1000
                // },
                label: { //文字标签
                    text: info.name,
                    font : '12pt monospace',
                    style : Cesium.LabelStyle.FILL_AND_OUTLINE,
                    fillColor: new Cesium.Color(1, 1, 1, 1),
                    showBackground: true,
                    backgroundColor: new Cesium.Color(1, 1, 1, 0.1),
                    backgroundPadding: new Cesium.Cartesian2(7, 5),
                    pixelOffset : new Cesium.Cartesian2( 0, -10 ),   //偏移量
                    distanceDisplayCondition: new Cesium.DistanceDisplayCondition(1, 10000)
                }
            });
        });
    }catch (err){
        console.log("drawEntityPoi error: ", err);
    }
    return viewer;
}

/**
 * 创建实体多边形，贴地
 * @param {*} viewer 
 * @param {*} name 
 * @param {*} infos 
 */
export let drawEntiityPolygon = (viewer, name, infos) => {
    try{
        infos.map(info => {
            viewer.entities.add({
                id: info.id.toString(),
                name: name,
                polyline: {
                    positions: Cesium.Cartesian3.fromDegreesArray( info.points ),
                    clampToGround: true,
                    width: 2,
                    material: Cesium.Color.fromCssColorString('#ff0').withAlpha(0.5)
                },
                polygon : {  
                    hierarchy : Cesium.Cartesian3.fromDegreesArray( info.points ),  
                    material : Cesium.Color.RED.withAlpha(0.1), //材质
                }
            });
        });
    }catch (err){
        console.log("drawEntityPoi error: ", err);
    }
    return viewer;
}

/**
 * 删除指定名称的实体
 * @author hejin 2019-9-4
 * @param {*} viewer 
 * @param {*} name 实体名称
 */
export let removeEntityByName = (viewer, name) => {
    let entities = viewer.entities.values.filter(item => { if(item.name === name) return item})
    entities.map( entity => { viewer.entities.remove(entity) })
}

/**
 * 删除指定类型的实体
 * @author hejin 2020-3-28
 * @param {*} viewer 
 * @param {*} type 实体类型
 */
export let removeEntityByType = (_viewer, type, callback) => {
    let entities = _viewer.entities.values.filter(item => { if(item.type === type) return item})
    entities.map( entity => { _viewer.entities.remove(entity) })
    typeof callback === 'function' && callback(); // ostring.call(callback) === '[object Function]'
}

/**
 * 画一个贴地的圆
 * @author hejin 2019-9-4
 * @param {*} viewer 
 * @param {*} name 实体名称
 */
export let drawCircle = (viewer, _id, lng, lat, radius=1000) => {
    let circle= viewer.entities.add({
        name: _id+'circle',
        position: Cesium.Cartesian3.fromDegrees(lng, lat),
        ellipse: {
            semiMinorAxis :  radius,  
            semiMajorAxis : radius,
            material : Cesium.Color.RED.withAlpha(0.1),
        }
    });
    return circle;
}

/**
 * 三维相机定位
 * @param { project } param 
 */
export function goAngleView (param) {
    config.zInst1.camOper.set(new ZGLobe.Position({longitude: parseFloat(param.longitude), latitude: parseFloat(param.latitude), height: parseFloat(param.height)}),
    new ZGLobe.Euler({heading: parseFloat(param.heading), pitch: parseFloat(param.pitch), roll: parseFloat(param.roll)}), 2);
}

/**
 * 定位点，三秒飞行时间
 * @param {*} lng  经度
 * @param {*} loat 纬度
 * @param {*} height 高度
 * @param {*} distance 相机查看点的距离
 */
let flyTmp = null;
export let lookAndFlyPoint = (lng, lat, height, distance, pitch=-25) => {
    let viewer = config.zInst1.viewer;
    if(flyTmp){
        viewer.entities.remove(flyTmp);
    }
    flyTmp = new Cesium.Entity({
        id : 'flyTmp',
        position : Cesium.Cartesian3.fromDegrees(lng, lat, height),
        point : {
            pixelSize : 2,
            color : Cesium.Color.WHITE.withAlpha(1),
            outlineColor : Cesium.Color.WHITE.withAlpha(0.1),
            outlineWidth : 2
        }
    });
    viewer.entities.add(flyTmp);
    
    viewer.flyTo(flyTmp, {
        offset : {
            heading : Cesium.Math.toRadians(0.0),
            pitch : Cesium.Math.toRadians(pitch),
            range : distance
        }
    });
}

/**
 * 定位实体，三秒飞行时间
 * @param {*} lng  经度
 * @param {*} loat 纬度
 * @param {*} height 高度
 * @param {*} distance 相机查看点的距离
 */
export let lookAndFlyEntity = (entity) => {
    let viewer = config.zInst1.viewer;
    viewer.flyTo(entity, {
        offset : {
            heading : Cesium.Math.toRadians(0.0),
            pitch : Cesium.Math.toRadians(-25),
            range : 0
        }
    });
}

/**
 * 名称定位实体，三秒飞行时间
 * @param {*} lng  经度
 * @param {*} loat 纬度
 * @param {*} height 高度
 * @param {*} distance 相机查看点的距离
 */
export let lookAndFlyEntityOfName = (eName) => {
    let viewer = config.zInst1.viewer;
    let entities = viewer.entities.values;
    entities.map(entity => {
        if(entity.name === eName){
            //世界坐标转(笛卡尔坐标)换为经纬度
            var ellipsoid=viewer.scene.globe.ellipsoid;
            // var cartesian3=new Cesium.cartesian3(x,y,z);//世界坐标/笛卡尔坐标
            var cartographic=ellipsoid.cartesianToCartographic(entity.position._value);
            var lat=Cesium.Math.toDegrees(cartographic.latitude);//cartograhphic.latitude(弧度)并非我们想要的  转化后的才是我们想要的（经纬度），
            var lng=Cesium.Math.toDegrees(cartographic.longitude);
            var height=cartographic.height;
            lookAndFlyPoint(lng, lat, height, 2000);
        }
    })
}

/**
 * 顶视
 * @author hejin 2019-10-16
 */
export let topViewer = () =>{
    let zInst1 = config.zInst1;
    let viewer = config.zInst1.viewer;
    let c = zInst1.camOper.getPosition();

    let earth = document.getElementById("earth");
    let ew = earth.clientWidth || earth.offsetWidth;
    let eh = earth.clientHeight || earth.offsetHeight;
    
    let pick1= new Cesium.Cartesian2( ew/2, eh/2);
    let cartesian = viewer.scene.globe.pick(viewer.camera.getPickRay(pick1),viewer.scene);

    let ellipsoid=viewer.scene.globe.ellipsoid;
    let cartesian3=new Cesium.Cartesian3(cartesian.x, cartesian.y, cartesian.z);
    let cartographic=ellipsoid.cartesianToCartographic(cartesian3);
    let lat=Cesium.Math.toDegrees(cartographic.latitude);
    let lng=Cesium.Math.toDegrees(cartographic.longitude);

    let info = {
        longitude: lng,
        latitude: lat,
        height: c.height,
        heading: 0,
        // heading: c.heading,
        pitch: -90,
        roll: c.roll
    }
    goAngleView(info);
}

/**
 * 俯视
 * @author hejin 2019-10-18
 */
export let overlookViewer = () => {
    let zInst1 = config.zInst1;
    let camOper = zInst1.camOper.getPosition();
    let distance = Math.tan(45) * camOper.height;
    
    let earth = document.getElementById("earth");
    let ew = earth.clientWidth || earth.offsetWidth;
    let eh = earth.clientHeight || earth.offsetHeight;
    
    let pick1= new Cesium.Cartesian2( ew/2, eh/2);
    let cartesian = viewer.scene.globe.pick(viewer.camera.getPickRay(pick1),viewer.scene);
    let ellipsoid=viewer.scene.globe.ellipsoid;
    let cartesian3=new Cesium.Cartesian3(cartesian.x, cartesian.y, cartesian.z);
    let cartographic=ellipsoid.cartesianToCartographic(cartesian3);
    let lat=Cesium.Math.toDegrees(cartographic.latitude);
    let lng=Cesium.Math.toDegrees(cartographic.longitude);
    let height = cartographic.height;
    lookAndFlyPoint(lng, lat, height, distance);
}

/**
 * 通过经纬度获得地形高度
 * @author hejin 2019-11-26
 * @param {[Cesium.Cartographic.fromDegrees(87.0, 28.0)]} points 
 */
let terrainProvider = undefined;
export let getTerrainHeight = (points) => {
    if(terrainProvider === undefined){
        terrainProvider = new Cesium.CesiumTerrainProvider({
            url: Cesium.IonResource.fromAssetId(1),
            requestVertexNormals: true,
            baseLayerPicker : false
        })
    }
    var promise = Cesium.sampleTerrainMostDetailed(terrainProvider, points);
    Cesium.when(promise, (updatedPositions) => { 
        return updatedPositions;
    });
}

/**
 * 地球自转展示
 * @param { object } viewer 
 * @param { boolean } maxHeight 自转高度
 */
export let earthRotation =(viewer, maxHeight)=>{
    let height = maxHeight;
    var i = Date.now();
    function rotate() {
        if(height < maxHeight) { return; }
        var a = .05;
        var t = Date.now();
        var n = (t - i) / 1e3;
        i = t;
        viewer.scene.camera.rotate(Cesium.Cartesian3.UNIT_Z, -a * n);
        // console.log("clock:", t);
    }
    viewer.clock.onTick.addEventListener(rotate);
    // //  监听鼠标，当高度小于多少的时候 取消自转
    // var handler = new Cesium.ScreenSpaceEventHandler(viewer.scene.canvas);
    // handler.setInputAction(function(wheelment) {
    //     var height =Math.ceil(viewer.camera.positionCartographic.height);//取整数
    //     if(height<maxHeight){
    //         viewer.clock.onTick.removeEventListener(rotate);
    //     }else{
    //         viewer.clock.onTick.addEventListener(rotate);
    //     }
    // }, Cesium.ScreenSpaceEventType.WHEEL);

    //监听视角变化，来判断
    viewer.scene.camera.changed.addEventListener(() => {
        height =Math.ceil(viewer.camera.positionCartographic.height);//取整数
        if(height<maxHeight){
            viewer.clock.onTick.removeEventListener(rotate);
        }else{
            viewer.clock.onTick.addEventListener(rotate);
        }
    });//监听视角移动/变化
}

/**
 * 
 * @param {*} viewer 
 * @param {*} url json数据本地地址
 * @param {*} names 需要显示数据源的名称列表
 * @example
    drawJsonArea("static/json/china/beijing.json", ['大兴区']).then((entities) => {
        console.log('drawJsonArea: ', entities);
    });
 */
export let drawJsonArea = (viewer, url, names) => {
    return new Promise((resovle, reject) => {
        let promise = Cesium.GeoJsonDataSource.load(url, {
            fill: new Cesium.Color(76 / 255, 171 / 255, 206 / 255, 0.02),
            stroke: new Cesium.Color(76 / 255, 171 / 255, 207 / 255, 1),
            strokeWidth: 5
        });
        promise.then(function(dataSource) {
            let ds = new Cesium.GeoJsonDataSource('areaPolygon')
            viewer.dataSources.add(ds);

            let time = new Cesium.JulianDate()
            let entities = dataSource.entities.values;
            entities.map(entity => {
                let properties = entity.properties.getValue(time);
                let entityName = properties.hasOwnProperty('Name') ? properties.Name : properties.name;
                if(names.indexOf(entityName) !== -1){
                    entity.name = entityName;
                    // entity.polygon.outline = true;
                    // entity.polygon.outlineWidth = 5;
                    ds.entities.add(entity);
                }
            })
            resovle(ds.entities);
        });
    })
}

export let drawEntityPoiSingle = (_viewer, info) => {
    return new Promise((resovle, reject) => {
        let parent = getParentEnitty(info.group);
        let entity = _viewer.entities.add({
            id: info.id.toString(),
            type: info.hasOwnProperty('type') ?  info.type : 'poi',
            name: info.name,
            parent: parent,
            imgs: info.imgs,
            position: Cesium.Cartesian3.fromDegrees(parseFloat(info.lng), parseFloat(info.lat), parseFloat(info.height)),
            label: { //文字标签
                text: info.name,
                font : '12pt monospace',
                style : Cesium.LabelStyle.FILL_AND_OUTLINE,
                fillColor: new Cesium.Color(255/255, 255/255, 255/255, 1),
                outlineColor: new Cesium.Color(1, 1, 1, 0),
                outlineWidth : 0,
                showBackground: true,
                backgroundColor: new Cesium.Color(0, 0, 0, 0),
                backgroundPadding: new Cesium.Cartesian2(7, 5),
                pixelOffset : new Cesium.Cartesian2( 0, -40 ),   //偏移量
                distanceDisplayCondition: new Cesium.DistanceDisplayCondition(1, 1000000)
            },
            billboard: { //图标
                name: info.name,
                width: 24,
                height: 24,
                image : info.imgs.defaultImg,
                pixelOffset: new Cesium.Cartesian2(0, 0),
                horizontalOrigin: Cesium.HorizontalOrigin.CENTER,
                verticalOrigin: Cesium.VerticalOrigin.BOTTOM,
            },
        });
        resovle(entity);
    })
}


// ---------------------------------------- 图层树相关 ------------------------------------------------

let drawPolygon = (features) => {
    console.log(features.geometry.coordinates)
    let params = [];
    features.map( (item , index )=> {
        let points = [];
        item.geometry.rings[0].map(infos => {
            points.push(infos[0]);
            points.push(infos[1]);
        })
        let obj = {
            id: 'polygon_'+item.attributes.id,
            name: item.attributes['name'],
            points: points
        }
        params.push( obj );
    })
    drawEntiityPolygon( config.zInst1.viewer, me.name, params);

} 

let drawLineJson = ( param ) => {

    let zInst1 = config.zInst1;
    zInst1.viewer.dataSources.add(Cesium.CzmlDataSource.load(param.url));
     $.getJSON( param.url ).then(post => {
         console.log(post[0].name);
    // //     // for (var i = 0; i <post.features.length; i++) {
    // //     //     var entity=post.features[i];
    // //     //     drawPolygon(entity);
    // //     // }

    // //     console.log('post : ', post );
    // //     let params = [];
    // //     post.features.map( (item , index )=> {
    // //         if(index > 10) return;
    // //         let points = [];
    // //         item.geometry.coordinates.map(infos => {
    // //             points.push(infos[0]);
    // //             points.push(infos[1]);
    // //         })
    // //         let obj = {
    // //             id: item.properties.OBJECTID,
    // //             name: 'polyline' + item.properties.OBJECTID,
    // //             points: points
    // //         }
    // //         params.push( obj );
    // //     })
    // //     console.log('params:   ', params);
    // //     drawEntiityPolygon( config.zInst1.viewer, "polyline", params);

    }).catch( error => {
        console.log(error);
    });
}

let cleanLineJson = ( param )=>
{
    let zInst1 = config.zInst1
    $.getJSON( param.url ).then(post => {

        for (var i = 0; i < zInst1.viewer.dataSources.length; i++) {
            var ds = zInst1.viewer.dataSources.get(i);
            var es = ds.entities.values;
            var flag = true;
            for (var j = 0; j < es.length; j++) {
                var id = es[j].id;
                if (id.indexOf(post[0].name) == 0) {
                    flag = true;
                    break;
                }
            }
            if (flag) {
                viewer.dataSources.remove(ds);
                i--;
            }
        }
    }).catch( error => {
         console.log(error);
    });
}
 
let addAdditionalLayerOption=(name, imageryProvider, alpha, show) =>{
    let zInst1 = config.zInst1
    var layer = zInst1.viewer.imageryLayers.addImageryProvider(imageryProvider);
    layer.alpha = Cesium.defaultValue(alpha, 0.5);
    layer.show = Cesium.defaultValue(show, true);
    layer.name = name;
    console.log(layer);
    //Cesium.knockout.track(layer, ['alpha', 'show', 'name']);
}

let drawGrid=()=>{
    addAdditionalLayerOption(
        'Grid',
        new Cesium.GridImageryProvider(), 1.0, true);
}

let cleanGrid=()=>{
    let zInst1 = config.zInst1;
    var imageryLayers=zInst1.viewer.imageryLayers;
    //console.log(imageryLayers._layers[2]);
    for(var i=0;i<imageryLayers._layers.length;i++)
    {
        var name=imageryLayers._layers[i].name;
        
        if(name=="Grid")
        {
            var layer = imageryLayers.get(i);
            imageryLayers.remove(layer, false);
        }
    }
}

let addWhite_3dtiles=(param)=>{
    let zInst1 = config.zInst1;

    var tileset = zInst1.viewer.scene.primitives.add(new Cesium.Cesium3DTileset({
            url: param.url,
    }));
    tileset.name="sichuan_baimo";
    tileset.readyPromise.then(function(tileset) {
            var longitude = param.param.longitude;
            var latitude = param.param.latitude;
            var height = param.param.height;
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
                ['${height} >= 60', 'rgba(211,211,211,1)'],
                ['${height} >= 45', 'rgba(192,192,192,1)'],
                ['${height} >= 30', 'rgba(169,169,169,1)'],
                ['${height} >= 6', 'rgba(128,128,128,1)'],
                ['true', 'rgba(105,105,105,1 )']
            ]
        },
        show : true
    });
}

let cleanWhite_3dtiles=()=>{
    let zInst1 = config.zInst1;

    var primitives= zInst1.viewer.scene.primitives;
    for(var i=0;i<primitives._primitives.length;i++)
    {
        var name=primitives._primitives[i].name;
        
        if(name=="sichuan_baimo")
        {
            var primitive = primitives.get(i);
            primitives.remove(primitive, false);
        }
    }
}

export let clean_alltype=(name, type)=>{
    let zInst1 = config.zInst1;
    if(type=="model")
    {
        var entities=zInst1.viewer.entities.values;
        entities.map(entity =>{
            if(entity.name==name)
            {
                zInst1.viewer.entities.remove(entity);
            }
        })
    }
    if(type=="3dtile")
    {
        var primitives= zInst1.viewer.scene.primitives;
        for(var i=0;i<primitives._primitives.length;i++)
        {
            console.log(pname);
            var pname=primitives._primitives[i].name;
            if(pname==name)
            {
                var primitive = primitives.get(i);
                primitives.remove(primitive, false);
            }
        }
    }
    if(type="imageryLayer")
    {
        var imageryLayers=zInst1.viewer.imageryLayers;
        //console.log(imageryLayers._layers[2]);
        for(var i=0;i<imageryLayers._layers.length;i++)
        {
            var pname=imageryLayers._layers[i].name;
            
            if(pname==name)
            {
                var layer = imageryLayers.get(i);
                imageryLayers.remove(layer, false);
            }
        }
    }
}
/**
 * 图层开关
 * @author hejin 2019-6-17
 * @param { object } infos 图层信息
 * @param { boolean } checked 图层开关状态
 */
export function layerAction (infos, checked) {
    let viewer = config.zInst1.viewer;
    infos.map(item => {
        if(checked){ //选中状态

            let pm = item.hasOwnProperty('param') ? {
                brightness: item.param.hasOwnProperty('brightness') ? item.param.brightness : "",
                alpha: item.param.hasOwnProperty('alpha') ? item.param.alpha : "",
                zindex: item.param.hasOwnProperty('zindex') ? item.param.zindex : "",
                enablePickFeatures: item.param.hasOwnProperty('enablePickFeatures') ? item.param.enablePickFeatures : "",
            } : {};     

            switch(item.groupName){
                case "MODEL":
                    config.zInst1.objectManager.addModel(item.groupName, item.id.toString(), item.url, item.lng, item.lat, item.height, item.heading, item.tilt, item.roll, item.minimumPixelSize); 
                    break;
                case "IMGLAYER":
                    let url =config.arcgicServices + item.url;
                    config.zInst1.objectManager.addImageryLayer(item.groupName, item.id.toString(), ZGLobe.Constants.ImageryType.Arcgis, url, pm);
                    break;
                case "3DTILE":
                    // config.zInst1.objectManager.add3dTiles(item.groupName, item.id.toString(), item.url, item.param)




                    var tileset = new Cesium.Cesium3DTileset({
                        url: item.url,
                    });
                    tileset.name=item.id.toString();
                    viewer.scene.primitives.add(tileset);
                    viewer.zoomTo(tileset);
                    break;
                case "TERRAIN":
                    console.log(item.infos)
                    var gee = new Cesium.CesiumTerrainProvider({
                        url: Cesium.IonResource.fromAssetId(item.url),
                        // "/static/3d/terrain"
                        //  url: item.url, 
                        requestVertexNormals: item.infos,
                        baseLayerPicker : false
                    });
                    config.zInst1.objectManager.setTerrain(gee);
                    break;
                case "TITLEIMGLAYER":
                    let tileUrl = '/static/terrian/tdtTile/{z}/{x}_{y}.png';
                    config.zInst1.objectManager.addImageryLayer(null, 't0', ZGLobe.Constants.ImageryType.Template, tileUrl, {zindex: 100});
                    break;
                case "POINT":
                    // point3d.add(item);
                    break;
                case "ARCPOINT":
                    // point3d.drawBillboard(item);
                    break;
                case "LINE":
                    drawLineJson(item);
                    break;
                case "GRID":
                    drawGrid();
                    break;
                case "STARRY":
                    viewer.scene.skyBox.show = true; // 天空盒子
                    //viewer.scene.backgroundColor = new Cesium.Color(0.0, 0.0, 0.0, 1.0);  // 场景背影
                    break;
                case "ATMOSPHERE":
                    
                    viewer.scene.skyAtmosphere.show = true;    // 天空大气
                    viewer.scene.globe.enableLighting = true;
                    
                    break;
                case "3DTILE_WHITE":
                    addWhite_3dtiles(item)
                    break;
                default:
                    console.log(item.groupName ,' 没有些类型的实例化方法！')
            }
        }else{ //未选中状态
            switch(item.groupName){
                case "TERRAIN":
                    config.zInst1.objectManager.setTerrain();
                    break;
                case "3DTILE":
                    clean_alltype(item.id.toString(),"3dtile")// test(item.url);
                    console.log("primitives", viewer.scene.primitives);
                    break;
                    // test
                case "ARCPOINT":
                    // point3d.remove(item.type);
                    break;
                case "POINT":
                    // point3d.remove(item.id);
                    break;
                case "LINE":
                cleanLineJson(item);
                    break;
                case "GRID":
                    cleanGrid();
                    // point3d.remove(item.id);
                    break; 
                case "STARRY":
                    viewer.scene.skyBox.show = false; // 天空盒子
                    viewer.scene.backgroundColor = new Cesium.Color(0.0, 0.0, 0.0, 1.0);  // 场景背影
                    break;
                case "ATMOSPHERE":
                    viewer.scene.skyAtmosphere.show = false;    // 天空大气
                    viewer.scene.globe.enableLighting = false;
                    break;
                case "3DTILE_WHITE":
                    cleanWhite_3dtiles();
                    break;      
                default:
                    config.zInst1.objectManager.delObj(item.groupName, item.id.toString());
            }
        }
    })
}
