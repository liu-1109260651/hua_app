<template>
  <div>
    <!-- 导航头开始 -->
    <mt-header title="购物车" class="cart">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <!-- 导航头结束 -->

    <div class="login" v-if="this.$store.state.isLogin == 0">
      登录后将同步您的购物车商品
      <router-link to="/user_login" class="login-a">登录</router-link>
    </div>

    <div class="cart_2">
      <img class="cart_2_img" src="../assets/cart/cart.png" alt="" />
      <p class="cart_2_p">购物车内暂时没有商品</p>
      <router-link to="/" class="cart_2_a">去逛逛</router-link>
    </div>

    <div class="kg"></div>

    <h3 class="h_3">猜你喜欢</h3>
    <div class=" product_tj">
      <router-link
        v-for="(v, k) of product"
        :key="k"
        class=""
        :to="`/details/${v.lid}`"
      >
        <img class="product_tj_img" :src="v.img" alt="" />
        <p class="ysh_title">{{ v.title }} · {{ v.subtitle }}</p>
        <div class="price position-relative">
          <strong style="color: tomato;">￥{{ v.price }}</strong>
        </div>
      </router-link>
    </div>

    <!-- 底部导航开始 -->
    <div class="footer">
      <mt-tabbar v-model="footer" fixed>
        <mt-tab-item id="index"
          >首页
          <img
            v-if="footer == 'index'"
            src="../assets/index/index_active.png"
            slot="icon"
            alt=""
          />
          <img
            v-else
            src="../assets/index/index_disable.png"
            slot="icon"
            alt=""
          />
        </mt-tab-item>
        <mt-tab-item id="classify"
          >分类
          <img
            v-if="footer == 'classify'"
            src="../assets/index/classify_active.png"
            slot="icon"
            alt=""
          />
          <img
            v-else
            src="../assets/index/classify_disable.png"
            slot="icon"
            alt=""
          />
        </mt-tab-item>
        <mt-tab-item id="cart" class="position-relative"
          >购物车
          <img
            v-if="footer == 'cart'"
            src="../assets/index/cart_active.png"
            slot="icon"
            alt=""
          />
          <img
            v-else
            src="../assets/index/cart_disable.png"
            slot="icon"
            alt=""
          />
          <span
            v-if="this.$store.state.cart_list.length > 0"
            class="cart-span"
            >{{ this.$store.state.cart_list.length }}</span
          >
        </mt-tab-item>
        <mt-tab-item id="me"
          >我的
          <img
            v-if="footer == 'me'"
            src="../assets/index/my_active.png"
            slot="icon"
            alt=""
          />
          <img v-else src="../assets/index/my_disable.png" slot="icon" alt="" />
        </mt-tab-item>
      </mt-tabbar>
    </div>
    <!-- 底部导航结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      footer: "cart",
      product: {},
    };
  },
  mounted() {
    this.axios.get("/product_index?pid=1").then((res) => {
      this.product = res.data.result;
    });
  },
  watch: {
    footer(value) {
      if (value == "index") {
        this.$router.push("/");
      } else if (value == "me") {
        this.$router.push("/login");
      } else if (value == "cart") {
        if (this.$store.state.cart_list.length == 0) {
          this.$router.push("/cart");
        } else {
          this.$router.push("/ShowCart");
        }
      } else if (value == "classify") {
        this.$router.push("/classify");
      }
    },
  },
};
</script>
<style scoped>
.cart {
  background-color: white;
  color: #000;
  font-size: 18px;
}
.login {
  width: 100%;
  height: 40px;
  background-color: #fff0ec;
  font-size: 13px;
  text-align: center;
  padding-top: 10px;
}
.login-a {
  display: inline-block;
  width: 50px;
  height: 23px;
  border: 1px solid tomato;
  color: tomato;
  border-radius: 10px;
  margin-left: 10px;
}
.cart_2 {
  width: 100%;
  height: 293px;

  text-align: center;
  padding: 45px;
}
.cart_2_img {
  width: 136px;
  height: 104px;
}
.cart_2_p {
  margin-top: 20px;
  font-size: 13px;
}
.cart_2_a {
  display: inline-block;
  width: 120px;
  height: 40px;
  border-radius: 20px;
  background-color: tomato;
  color: #fff;
  padding: 8px 0px;
}
.product {
  box-shadow: 0px 0px 10px #e9ecf0;
  margin: 10px;
  text-decoration: none;
  list-style: none;
}
.product_img {
  width: 176px;
}
.product a {
  display: block;
}
.product_detail {
  padding: 0px 20px;
}
.product_detail a:hover {
  text-decoration: none;
}
.kg {
  margin: 20px 0px;
  width: 100%;
  height: 10px;
  background-color: #e9ecf0;
}
.h_3 {
  font-size: 17px;
  text-align: left;
  padding: 20px 15px;
}
.product_tj {
  margin-bottom: 60px;
}
.product_tj a {
  box-shadow: 0px 0px 10px #e9ecf0;
  display: inline-block;
  width: 170px;
  margin-bottom: 10px;
  padding: 5px;
  text-decoration: none;
  list-style: none;
  margin-left: 15px;
  box-shadow: 0px 0px 10px #e9ecf0;
  text-decoration: none;
  list-style: none;
}
.product_tj_img {
  width: 160px;
}
.ysh_title {
  font-size: 12px;
  color: #6e6e6e;
  margin-bottom: 10px;
  font-weight: 400;
  line-height: 12px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 1;
  margin-top: 10px;
}
.cart-span {
  display: inline-block;
  width: 20px;
  height: 20px;
  text-align: center;
  padding: 5px 0px;
  color: white;
  border-radius: 10px;
  background-color: tomato;
  position: absolute;
  top: 0;
  right: 20px;
}
.mint-tabbar > .mint-tab-item.is-selected {
  color: tomato;
}
</style>
