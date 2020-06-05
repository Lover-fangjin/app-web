import Vue from 'vue'
import Vuex from 'vuex'
import duty from './duty'

Vue.use(Vuex)

// 应用初始状态
export const state = {
  loading:[],           // 接口请求队列
  message: {
    resultCode: '200',
    result: 'success !',
  },
}

// 定义所需的 mutations
const mutations = {
  updateLoading(state, loading) {
    if(loading.status){
      state.loading.push(loading.name);
    }else{
      state.loading = state.loading.filter(function(item) {
        return item != loading.name
      });
    }
  },
  updateMessage(state, value){
    state.message = value;
  },
}

const actions = {}

const getters = {
  updateLoading (state) {
    return state.loading;
  },
  message(){
    return state.message;
  },
}

// 创建 store 实例
export default new Vuex.Store({
  state,
  actions,
  getters,
  mutations,
  modules: {
    duty: duty
  }
})
