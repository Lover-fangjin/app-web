import Vue from 'vue'
import Vuex from 'vuex'
import duty from './duty'

Vue.use(Vuex)

// 应用初始状态
export const state = {
  loading:[],           // 接口请求队列
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
}

const actions = {}

const getters = {
  updateLoading (state) {
    return state.loading;
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
