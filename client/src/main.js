import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import HeaderView from '@/components/HeaderView'
import DiscussView from '@/components/DiscussView'
import LoginView from '@/views/LoginView'
import VueResource from 'vue-resource'

Vue.use(VueResource)

Vue.component('app-header', HeaderView)
Vue.component('app-discuss', DiscussView)
Vue.component('app-login', LoginView)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
