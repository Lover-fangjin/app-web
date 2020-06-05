import axios from 'axios'
// import tip from '../util/tip.js';
import VueRouter from 'vue-router'
import router from '../routes/index.js'
import store from '../vuex/store';

const routes = new VueRouter({
  router
})

let base = config.services;
//axios基本配置
axios.defaults.baseURL = base;
axios.defaults.withCredentials = false;
axios.defaults.headers.post['Content-Type'] = 'application/json;charset=UTF-8';
axios.defaults.headers.get['Content-Type'] = 'application/json;charset=UTF-8';

// 获取CancelToken
const CancelToken = axios.CancelToken;
const source = CancelToken.source();

//请求开始拦截
axios.interceptors.request.use(conf => {
    let _bool = updateLoading(conf.url, true);
    // if(!_bool){ return Promise.reject("接口重复提交，请稍后再试！"); }
    //请求带token
    // conf.headers['token'] = sessionStorage.getItem('token')+'';
    // let userid = localStorage.getItem('userid');
    // if(userid){
    //   let data = conf.data;
    //   Object.assign(data, {userid: userid});
    //   conf.data = data;
    // }
    conf.headers['authorization'] = sessionStorage.getItem('token');
    conf.headers['sysid'] = '2';
    return conf
  },
  error => ({ status: 0, msg: error.message })
)
//请求返回拦截
axios.interceptors.response.use(response => {
    updateLoading(response.request.responseURL, false);
    return Promise.resolve(response).then(checkCode)
  },
  error => {
      error.response ? 
      checkStatus(error.response)
      : console.log('error: ', error.message)
      // : tip.$message({message: error.message, type:'error',duration:config.duration});
      return Promise.reject(error)
  }
)
// http状态码错误处理
const checkStatus = (res) => {
  // window.$pig.$vux.loading.hide()
  switch (res.status)
  {
      case 401 :{        //登录过期
        // tip.$message({message: '登录过期',type:'error',duration:config.duration})
        console.log("error: ", '登录过期');
        break;
      }
      default:
        // tip.$message({message: '服务器存在异常',type:'error',duration:config.duration})
        console.log("error: ", '服务器存在异常');
        break;
  }
}
// 后台自定义 code错误处理
const checkCode = (res) => {
  if(res.data.code === 10003){
    // tip.$message({message: res.data.msg, type:'error',duration:config.duration}) // 登建界页重定向
    console.log("error: ", res.data.msg);
    localStorage.setItem('isLogin', false);
    routes.push({path: '/login'});
    return false
  }else{
    if(res.data.resultCode !== 200){
      // tip.$message({message: res.data.msg, type:'error',duration:config.duration}) // 统一错误处理
      console.log("error: ", res.data.msg);
    }
    return res.data;
  }
}

export const updateLoading = (url, status) => {
  let ary = url.split('/');
  let name = ary[ary.length-1];
  if(status && store.state.loading.indexOf(name) !== -1 ){
    return false;
  }
  let loading = {
    name: name,
    status: status
  }
  store.commit('updateLoading',loading);
  return true;
}

/**
 * 请求队列轮询，直到数据请求完成
 * @param { 请求队列别名 } type 
 * @example 
    this.$api.ajaxLoop('AjaxPoints').then(() => {
      let _points = me.$store.state.global.points;
      console.log("global points:  ", _points);
    })
 */
export const ajaxLoop = type => {
  return new Promise((resovle, reject) => {
    if(store.state.loading.indexOf( type ) !== -1){
      let timer = setInterval(() => {
        if(store.state.loading.indexOf( type ) === -1){
          clearInterval(timer); 
          resovle();
        }
      }, 200);
    }else{
      resovle();
    }
  })
}

/**
 * 接口请求部分
 * @param param
 */
//登录
// export const login = (param) => { return axios.get(`/user/login`, {"params": param}).then(res => res) }  //例：get 请求
export const login = (param) => { return axios.post(`/user/login`,  param).then(res => res) }            //例：post 请求
export const logouts = () => { return axios.get(`/user/logout`, {}).then(res => res) } // 退出登录请求


// export const logout = (param) => {  return axios.post(`/user/logout`,  param).then(res => res) }  // 退出登录请求
// export const login = (param) => {   return axios.post(`/user/login`,  param).then(res => res) }  //登录请求
//基础数据
export const layerTree = (param) => { return axios.get(`/layerTree/list`, {"params": param}).then(res => res) } 
// 拖拽修改节点id
export const updatePid = (param) => { return axios.post(`/layerTree/updatePid`,  param).then(res => res) }


/**
 * 辅政通
 */
export const getAllEvent = (params) => { return axios.get(`/event/selectAll`, {"params": params}).then(res => res) }
export const getAllSite = () => { return axios.get(`/site/selectAll`, {}).then(res => res) }
export const getDutyNum = () => { return axios.get(`/user/userDutyNum`, {}).then(res => res) }
export const getHealthCode = () => { return axios.get(`/healthCode/selectUpToDate`, {}).then(res => res) } //查看健康码
// 根据一级分类查询细分类
export const getEventType = (params) => { return axios.get(`/event/queryEventType`, {"params": params}).then(res => res) } //查看健康码

