import Vue from 'vue'
import Router from 'vue-router'

import Login from '../views/login'
import Fire from "../views/duty"
import Index from "../views/duty/fire"  //消防



Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: '/fire',
      name: 'fire',
      component:Fire,
      children:[
        {
          path: '/fire/index',
          name: 'index',
          component:Index,
        }
      ]
    }
  ]
})
