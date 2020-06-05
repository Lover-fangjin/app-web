import Vue from 'vue'
import Router from 'vue-router'

import Login from '../views/login'
import Printer from '../views/printer'
import Home from '../views/Home.vue'
import Police from '../views/police/index.vue'
import Video from '../views/components/Popwindow.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: '/home',
      name: 'Home',
      component: Home,
      children: [
        {
          path: '/',
          name: 'police',
          component: Police,
        },
        {
          path: '/printer',
          name: 'printer',
          component: Printer,
        },
        {
          path: '/video',
          name: 'video',
          component: Video,
        }
      ]
    },
  ],
})
