/**
 *         ....................阿弥陀佛.......................
 *                            _ooOoo_
 *                           o8888888o
 *                           88" . "88
 *                           (| -_- |)
 *                            O\ = /O
 *                        ____/`---'\____
 *                      .   ' \\| |// `.
 *                       / \\||| 2 |||// \
 *                     / _||||| -0- |||||- \
 *                       | | \\\ 1 /// | |
 *                     | \_| ''\-9-/'' | |
 *                      \ .-\__ `0` ___/-. /
 *                   ___`. .' /--8--\ `. . __
 *                ."" '< `.___\_<2>_/___.' >'"".
 *               | | : `- \`.;`\ 0 /`;.`/ - ` : | |
 *                 \ \ `-. \_ __\ /__ _/ .-` / /
 *         ======`-.____`-.___\_____/___.-`____.-'======
 *                            `=---='
 *        ..................佛祖保佑 ,永无BUG....................
 *
 *          佛曰:
 *                  写字楼里写字间，写字间里程序员；
 *                  程序人员写程序，又拿程序换酒钱。
 *                  酒醒只在网上坐，酒醉还来网下眠；
 *                  酒醉酒醒日复日，网上网下年复年。
 *                  但愿老死电脑间，不愿鞠躬老板前；
 *                  奔驰宝马贵者趣，公交自行程序员。
 *                  别人笑我忒疯癫，我笑自己命太贱；
 *                  不见满街漂亮妹，哪个归得程序员？
 *    
 *        ..................................................
 **/

import Vue from "vue";
import App from "./App.vue";
import store from "./vuex/store";
import router from './routes';
import Element from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import {eventTarget, GUID} from './util/common';
import api, { ajaxPromise } from './api/index';

Vue.use(Element)

router.beforeEach((to, from, next) => {
  // if(to.path !== '/login' && (localStorage.getItem('isLogin') === null || localStorage.getItem('isLogin') === 'false')){
  //     next({path: '/login'});
  // }else if (to.path === '' || to.path === '/') {
  //     next({path: '/home'})
  // } else {
  //   next()
  // }
  if (to.path === '' || to.path === '/') {
    next({path: '/login'})
  } else {
    next()
  }
})

// 全局事件容器
Vue.prototype.globalEvent = new eventTarget();
Vue.prototype.guid = new GUID();
Vue.prototype.$api = api;
Vue.prototype.$ajax = ajaxPromise;

Vue.config.productionTip = false;

new Vue({
  store,
  router,
  data() {
    return {
      areaEntities: null
    }
  },
  render: h => h(App),
}).$mount("#app");

var fixGltf = function(gltf) {
  if (!gltf.extensionsUsed) {
    return;
  }
  var v = gltf.extensionsUsed.indexOf('KHR_technique_webgl');
  var t = gltf.extensionsRequired.indexOf('KHR_technique_webgl');
  // 中招了。。
  if (v !== -1) {
    gltf.extensionsRequired.splice(t, 1, 'KHR_techniques_webgl');
    gltf.extensionsUsed.splice(v, 1, 'KHR_techniques_webgl');
    gltf.extensions = gltf.extensions || {};
    gltf.extensions['KHR_techniques_webgl'] = {};
    gltf.extensions['KHR_techniques_webgl'].programs = gltf.programs;
    gltf.extensions['KHR_techniques_webgl'].shaders = gltf.shaders;
    gltf.extensions['KHR_techniques_webgl'].techniques = gltf.techniques;
    var techniques = gltf.extensions['KHR_techniques_webgl'].techniques;
    gltf.materials.forEach(function (mat, index) {
      gltf.materials[index].extensions['KHR_technique_webgl'].values = gltf.materials[index].values;
      gltf.materials[index].extensions['KHR_techniques_webgl'] = gltf.materials[index].extensions['KHR_technique_webgl'];
      var vtxfMaterialExtension = gltf.materials[index].extensions['KHR_techniques_webgl'];
      for (var value in vtxfMaterialExtension.values) {
        var us = techniques[vtxfMaterialExtension.technique].uniforms;
        for (var key in us) {
          if (us[key] === value) {
            vtxfMaterialExtension.values[key] = vtxfMaterialExtension.values[value];
            delete vtxfMaterialExtension.values[value];
            break;
          }
        }
      };
    });
    techniques.forEach(function (t) {
      for (var attribute in t.attributes) {
        var name = t.attributes[attribute];
        t.attributes[attribute] = t.parameters[name];
      };
      for (var uniform in t.uniforms) {
        var name = t.uniforms[uniform];
        t.uniforms[uniform] = t.parameters[name];
      };
    });
  }
}
Object.defineProperties(Cesium.Model.prototype, {
  _cachedGltf: {
    set: function (value) {
      this._vtxf_cachedGltf = value;
      if (this._vtxf_cachedGltf && this._vtxf_cachedGltf._gltf) {
        fixGltf(this._vtxf_cachedGltf._gltf);
      }
    },
    get: function () {
      return this._vtxf_cachedGltf;
    }
  }
});

