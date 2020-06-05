import Vue from 'vue'
import Router from 'vue-router'

import Login from '../views/login'
import Fire from "../views/duty"
import Index from "../views/duty/fire"  //消防
import Search from "../views/duty/fire/SearchResult" 
import Printer from '../views/duty/printer'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: '/index',
      name: 'fire',
      component:Fire,
      children:[
        {
          path: '/',
          name: 'index',
          component:Index,
        },
        {
          path: '/search',
          name: 'search',
          component:Search,
        },
        {
          path: '/printer',
          name: 'printer',
          component: Printer,
        },
      ],
      
    }
  ]
})
