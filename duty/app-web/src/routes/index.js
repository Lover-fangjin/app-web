import Vue from 'vue'
import Router from 'vue-router'

import Login from '../views/login'
import Ncov from "../views/ncov"
import Duty from "../views/duty"
import Security from "../views/duty/security"  //安保
import Fire from "../views/fire/index"  //消防



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
      component: Fire
    },
    {
      path: '/duty',
      name: 'duty',
      component:Duty,
      children:[
        {
          path: '/duty/security',
          name: 'security',
          component:Security,
        }
      ]
    },{
      path: '/ncov/:area',
      name: 'ncov',
      component: Ncov
    }
  ]
})
