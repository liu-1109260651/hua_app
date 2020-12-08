import Vue from "vue";
import Vuex from "vuex";
import axios from "axios";
import qs from "qs";
import router from "../router";
import { Toast } from "vant";
Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    // isLogin:0,
    cart_list: JSON.parse(localStorage.getItem("list")) || [],
    isLogin: localStorage.getItem("isLogin")
      ? localStorage.getItem("islogin")
      : 0,
    username: localStorage.getItem("username")
      ? localStorage.getItem("username")
      : "",
    title: localStorage.getItem("title") ? localStorage.getItem("title") : "",
    classes: localStorage.getItem("classes")
      ? localStorage.getItem("classes")
      : "",
    price: localStorage.getItem("price") ? localStorage.getItem("price") : "",
    img: localStorage.getItem("img") ? localStorage.getItem("img") : "",
  },
  mutations: {
    logined(state, payload) {
      state.isLogin = 1;
      state.username = payload;
      localStorage.setItem("username", payload);
      localStorage.setItem("isLogin", 1);
    },
    loginout(state) {
      state.isLogin = 0;
      state.username = "";
      localStorage.removeItem("username");
      localStorage.removeItem("isLogin");
    },
    add(state, payload) {
      state.cart_list.push(payload);
      // state.shopList.push(payload)
      localStorage.setItem("list", JSON.stringify(state.cart_list));
      console.log(payload);
    },
    del(state, payload) {
      state.cart_list.forEach((item, index) => {
        if (item.lid === payload) {
          state.cart_list.splice(index, 1);
        }
        localStorage.setItem("list", JSON.stringify(state.cart_list));
      });
    },
  },
  actions: {
    login(context, payload) {
      axios.post("/user/login", qs.stringify(payload)).then((res) => {
        if (res.data.code == 1) {
          // localStorage.setItem("isLogin", "1");
          //  localStorage.setItem('uname',this.phone)

          context.commit("logined", res.data.result[0].phone);

          router.push("/");
        } else {
          // this.$toast({
          //   message: "用户名或密码错误",
          //   position: "center",
          //   duration: "2000",
          // });
          // window.alert("用户名密码错误");
          Toast({
            message: "用户名或密码错误",
            position: "center",
          });
        }
      });
    },
  },
  modules: {},
});
