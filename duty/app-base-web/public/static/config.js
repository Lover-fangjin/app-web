var viewer = null;
// WIDGET = {ID: 'U9R4b4i5rq'}; //竖版 
WIDGET = {FID: 'e40G4ARTal'}; // 头部悬浮
var config = {
  project: "北京消防协会会员地理信息系统",
  // services:'http://192.168.10.185:8082', //小褚
  services:'http://gis.ztmajt.com:8088/fire_control_api', //线上
  // services:'http://111.198.61.150:8088/fire_control_api', //线上
  
  // services:'https://fztsp.bjxingtaikeji.com/duty_manager_api',
  // arcgicServices: 'http://192.168.10.236:6080/arcgis/rest/services',

  duration:1500, //弹出框消失时间
  
  // 初始视角
  startViewer: {
    poisiton: {longitude: 121.897688, latitude: 48.374499, height: 7500000},
    euler: {heading: 0, pitch: -65, roll: 0}
  },

}
