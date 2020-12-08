import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";
import qs from "qs";
import moment from "moment";
import myFooter from "./components/myFooter.vue";
import Vant from "vant";
import "default-passive-events";
import "vant/lib/index.css";

Vue.component("my-footer", myFooter);
Vue.prototype.moment = moment;
Vue.prototype.qs = qs;
Vue.use(Vant);
//导入Mint UI
import MintUI from "mint-ui";
//导入样式文件
import "mint-ui/lib/style.min.css";
//注册为Vue的插件
Vue.use(MintUI);

axios.defaults.baseURL = "http://127.0.0.1:9050";
Vue.prototype.axios = axios;
Vue.config.productionTip = false;

// let a=['ShowCart']
// router.beforeEach((to,form,next)=>{
//   if(a.indexOf(to.name)>=0){
//    if(store.state.isLogin==0){
//       console.log('请先登录')
//       router.push({name:'user_login'})
    
//       //location.reload()
//    }
//   }
//   next()
// })

new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount("#app");
