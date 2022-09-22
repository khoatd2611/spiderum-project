import Vue from 'vue'
import VueRouter from 'vue-router'
// import HomeView from '../views/HomeView.vue'
import LoginView from '@/views/LoginView.vue'
import DiscussView from '@/components/DiscussView'
import AddPostView from '@/components/AddPostView'
import showBlog from '@/components/showBlog'
import singleBlog from '@/components/singleBlog'

Vue.use(VueRouter)

const routes = [
  // {
  //   path: '/',
  //   name: 'home',
  //   component: HomeView
  // },
  // {
  //   path: '/about',
  //   name: 'about',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  // }
  {
    path: '/login',
    name: '/login',
    component: LoginView
  },
  {
    path: '/discuss',
    name: '/discuss',
    component: DiscussView
  },
  {
    path: '/addpost',
    name: '/addpost',
    component: AddPostView
  },
  {
    path: '/showblog',
    name: '/showblog',
    component: showBlog
  },
  {
    path: '/showblog/singleBlog/:id',
    name: '/showblog/singleBlog',
    component: singleBlog
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
