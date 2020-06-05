import axios from 'axios'
import store from '../vuex/store';

let base = config.services;
//axios基本配置
axios.defaults.baseURL = base;
axios.defaults.withCredentials = false;
axios.defaults.headers.post['Content-Type'] = 'application/json;charset=UTF-8';
axios.defaults.headers.get['Content-Type'] = 'application/json;charset=UTF-8';

//请求开始拦截
axios.interceptors.request.use(conf => {
    conf.headers['Authorization'] = sessionStorage.getItem('token')+'';
    return conf
  }, error => ({ status: 0, msg: error.message })
)
//请求返回拦截
axios.interceptors.response.use(response => {
  return Promise.resolve(response).then(checkCode)
},error => {
  return Promise.reject(error)
})

// 后台自定义 code错误处理
const checkCode = (res) => {
  if(res.data.resultCode === 403){
    console.log("error: ", res.data);
    store.commit('updateMessage', res.data);
    return false
  }else{
    if(res.data.resultCode !== 200){
      store.commit('updateMessage', res.data);
    }
    return res.data;
  }
}

/**
 * 接口请求部分
 * @param param
 */
//登录
// export const login = (param) => { return axios.get(`/user/login`, {"params": param}).then(res => res) }  //例：get 请求
export const login = (param) => { return axios.post(`/user/login`,  param).then(res => res) }            //例：post 请求
export const logouts = () => { return axios.get(`/user/logout`, {}).then(res => res) } // 退出登录请求

/**
 * 北京消防协会
 */
export const getCountList = () => { return axios.get(`/company/getCountList`, {}).then(res => res) }  //查询地区统计树

/**
 * 消防协会
 */
export const getCompanyList = (params) => { return axios.get(`/company/getCompanyList`, {'params':params}).then(res => res) }  // 公司列表
export const getCompanyDetail = (params) => { return axios.get(`/company/getCompanyDetail`, {'params':params}).then(res => res) }  // 公司列表详情
export const getStatisticCharts = (params) => { return axios.get(`/company/getCharts`, {'params':params}).then(res => res) }  //查询地区统计树
export const getAssociKey = (params) => { return axios.get(`/company/getAssociKey`, {'params':params}).then(res => res) }  //联想
export const getQueryCompanyList = (params) => { return axios.get(`/company/queryCompanyList`, {'params':params}).then(res => res) }  //搜索公司列表
export const getQueryCompanyListByBnsType = (params) => { return axios.get(`/company/queryCompanyListByBnsType`, {'params':params}).then(res => res) }  //搜索公司列表


