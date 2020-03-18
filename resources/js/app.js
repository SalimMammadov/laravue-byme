import store from './store'
import router from './routes'

require('./bootstrap');

window.Vue = require('vue');
import Vuelidate from 'vuelidate'

Vue.use(Vuelidate)

Vue.component('App', require('./components/App.vue').default);
Vue.component('user', require('./components/User.vue').default);
Vue.component('users', require('./components/Users.vue').default);
Vue.component('search', require('./components/searchUser.vue').default);


const app = new Vue({
    el: '#app',
    store,
    router
});
