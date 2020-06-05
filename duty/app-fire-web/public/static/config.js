var viewer = null;
// WIDGET = {ID: 'U9R4b4i5rq'}; //竖版 
WIDGET = {FID: 'tvqG3MpB20'}; // 头部悬浮
var config = {
  zInst1: null,
  map: null,
  logo: "static/img/logo.png",
  project: "全球地理空间信息应用系统",
  // services:'http://101.200.211.234:18080',
  // services:'http://192.168.10.81:8080', //小褚
  // services:'http://192.168.10.112:8081', //海涛
  services:'https://fztsp.bjxingtaikeji.com/duty_manager_api',
  // arcgicServices: 'http://192.168.10.236:6080/arcgis/rest/services',

  // 默认打开的图层 
  checkedKeys:[ 501,502 ],
  duration:1500, //弹出框消失时间
  
  // 初始视角
  startViewer: {
    poisiton: {longitude: 121.897688, latitude: 48.374499, height: 7500000},
    euler: {heading: 0, pitch: -65, roll: 0}
  },

  // arcgis 服务数据查询的默认参数
  arcQueryParams: {
    where: "1=1",
    geometryType: 'esriGeometryPoint',
    returnGeometry: 'true',
    outFields: '*',
    f: 'json',
  },
}
