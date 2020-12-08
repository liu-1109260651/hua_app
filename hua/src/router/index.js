import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Login from "../views/login.vue";
import Cart from "../views/cart.vue";
import Classify from "../views/classify.vue";
import showcart from "../views/ShowCart.vue";
// import router from "./router";
import store from '../store/index'

Vue.use(VueRouter);

const orginalPush=VueRouter.prototype.push;
VueRouter.prototype.push=function push(location){
  return orginalPush.call(this,location).catch(err=>err)
  // console.log(this.location)
}

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/ShowCart",
    name:'ShowCart',
    component: showcart,
  },
  {
    path: "/login",
    name: "login",
    component: Login,
  },
  {
    path: "/cart",
    name: "cart",
    component: Cart,
  },
  {
    path: "/classify",
    name: "classify",
    component: Classify,
  },
  {
    path: "/user_login",
    name: "user_login",
    component: () => import("../views/user_login.vue"),
  },
  {
    path: "/details/:lid",
    name: "details",
    component: () => import("../views/details.vue"),
  },
  {
    path: "/search",
    name: "search",
    component: () => import("../views/search.vue"),
  },
  //{
  // path: '/about',
  // name: 'About',
  // route level code-splitting
  // this generates a separate chunk (about.[hash].js) for this route
  // which is lazy-loaded when the route is visited.
  //component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  //}
];
//全局守卫


const router = new VueRouter({
  routes,
});
let a=['ShowCart']
router.beforeEach((to,form,next)=>{
  if(a.indexOf(to.name)>=0){
   if(store.state.isLogin==0){
      console.log('请先登录')
      router.push({name:'user_login'})
    
      //location.reload()
   }
  }
  next()
})
export default router;
