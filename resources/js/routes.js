import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './components/App'
Vue.use(VueRouter)


 let routes = [

        {path:'/',component: require('./components/Users').default},
        {path:'/add',component: require('./components/addUser').default},
        {path:'/update',name:'updateuser',component: require('./components/updateUser').default},
        {path:'/delete',name:'deleteuser',component: require('./components/Users').default},
        {path:'*',component: require('./components/App').default}

]

const router = new VueRouter({
    routes,
    // linkActiveClass: 'active',
    mode: 'history',
    scrollBehavior (to, from, savedPosition) {
        if (savedPosition) {
            return savedPosition
        } else {
            return { x: 0, y: 0 }
        }
    }
});

export default router;
