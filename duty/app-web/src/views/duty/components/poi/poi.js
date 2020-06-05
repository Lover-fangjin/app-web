
export let unHighlight = () => {
    let viewer = config.zInst1.viewer;
    let entities = viewer.entities.values;
    entities.map(item => {
        if(item.billboard !== undefined && item.hasOwnProperty('imgs')){
            item.billboard.image.setValue(item.imgs.defaultImg);
        }
    });
}

export let highlight = (_name) => {
    unHighlight();
    let viewer = config.zInst1.viewer;
    let entities = viewer.entities.values;
    entities.map(item => {
        if(item.name === _name && item.hasOwnProperty('imgs')){
            item.billboard.image.setValue(item.imgs.activeImg);
        }
    });
}

/**
 * 创建一个 htmlElement元素 并且，其在earth背后会自动隐藏
 */
export let creatHtmlElement = (viewer, element, position, arr, flog) => {
    var scratch = new Cesium.Cartesian2(); //cesium二维笛卡尔 笛卡尔二维坐标系就是我们熟知的而二维坐标系；三维也如此
    var scene=viewer.scene,camera=viewer.camera;
        scene.preRender.addEventListener(() => {
        var canvasPosition =scene.cartesianToCanvasCoordinates(position, scratch);//cartesianToCanvasCoordinates 笛卡尔坐标（3维度）到画布坐标
        if (Cesium.defined(canvasPosition)) {
            element.css({
                // top:canvasPosition.y,
                // left:canvasPosition.x
                left:canvasPosition.x+arr[0],
                top:canvasPosition.y+arr[1]
            });
            /* 此处进行判断**/// var px_position = Cesium.SceneTransforms.wgs84ToWindowCoordinates(scene, cartesian);
            if(flog&&flog==true){
                var e = position, i = camera.position, n = scene.globe.ellipsoid.cartesianToCartographic(i).height;
                if (!(n += 1 * scene.globe.ellipsoid.maximumRadius, Cesium.Cartesian3.distance(i, e) > n)) {
                    element.show();
                } else {
                    element.hide();
                }
            }
            /* 此处进行判断**/
        }
    });
}
