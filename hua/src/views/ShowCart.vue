<template>
  <div>
    <!-- 头部导航栏开始  -->
    <mt-header title="购物车" class="header">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button class="btn" slot="right" @click="show_classify">
        <img
          style="width:23px;margin-top:5px"
          src="../assets/user_login/fenlei2.png"
          solt="icon"
          alt=""
        />
      </mt-button>
    </mt-header>
    <div class="fenlei" v-show="classify">
      <router-link to="/"
        ><img
          style="margin-right:10px"
          src="../assets/user_login/index.png"
          alt=""
        />首页</router-link
      >
      <router-link to="/classify"
        ><img
          style="margin-right:10px"
          src="../assets/user_login/classify.png"
          alt=""
        />分类查询</router-link
      >
      <router-link to="/cart"
        ><img
          style="margin-right:10px"
          src="../assets/user_login/cart.png"
          alt=""
        />购物车</router-link
      >
      <router-link to="/login"
        ><img
          style="margin-right:10px"
          src="../assets/user_login/me.png"
          alt=""
        />我的</router-link
      >
    </div>
    <!-- 头部导航栏结束  -->

    <!-- 商品列表开始 -->
    <div
      class="row no-gutters shoppingcart d-flex"
      v-for="(v, k) of product"
      :key="k"
    >
      <div class="col-2 dx">
        <input checked type="checkbox" />
      </div>
      <div @click="$router.push(`/details/${v.lid}`)" class="d-flex d1 col-10">
        <div class="col-3 product-img">
          <img :src="v.img" alt="" />
        </div>
        <div class="col-9  detail position-relative">
          <p>[{{ v.classes }}]{{ v.title }}</p>
          <div class="d-flex">
            数量：<span
              class="detail-span"
              @click.stop="v.count = v.count - 1"
              v-if="v.count > 1"
              >-</span
            >
            <div v-else class="detail-span" @click.stop="product_drop(v.lid)">
              <img
                width="70%"
                style="margin-bottom:6px"
                src="../assets/shoppingCart/drop.png"
                alt=""
              />
            </div>
            <input type="text" :value="v.count" /><span
              @click.stop="v.count = v.count + 1"
              class="detail-span"
              >+</span
            >
          </div>
          <p class="price">
            ￥<span>{{ v.price }}</span>
          </p>
        </div>
      </div>
    </div>
    <!-- 商品列表结束 -->

    <div class="kg"></div>

    <!-- 底部导航开始 -->
    <div class="footer">
      <div class=" row no-gutters footer-div">
        <div class="col-8 d-flex total">
          合计：
          <p>￥{{ sum }}</p>
        </div>
        <div class="col-4 pay">去结算({{ count }})</div>
      </div>
    </div>
    <!-- 底部导航结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      classify: false,
      product: [],
    };
  },
  methods: {
    show_classify() {
      this.classify = !this.classify;
    },
    product_drop(value) {
      this.$toast({
        message: "删除成功",
        position: "center",
        duration: "2000",
      });
      // let price_total = this.product;
      // let lid = 0;
      // for (let i of price_total) {
      //   lid = i.lid;
      // }
      console.log(value);
      this.$store.commit("del", value);

      if (this.$store.state.cart_list.length == 0) {
        this.$router.push("/cart");
      }
    },
  },
  computed: {
    sum() {
      let a = 0;
      let price_total = this.product;
      for (let p of price_total) {
        a += p.price * p.count;
      }
      return a;
      console.log(a);
    },
    count() {
      let b = 0;
      let product = this.product;
      for (let i of product) {
        b += i.count;
      }
      return b;
    },
  },
  mounted() {
    this.product = this.$store.state.cart_list;
    console.log(this.product);
  },
};
</script>
<style scoped>
.header {
  background-color: #fff;
  color: #000;
  font-size: 18px;
  border-bottom: 1px solid #e9ecf0;
}
.fenlei {
  width: 108px;
  height: 194px;
  padding: 0px 10px;
  border: 1px solid silver;
  background-color: #fff;
  position: absolute;
  top: 35px;
  right: 10px;
  border-radius: 5px;
  z-index: 200;
  margin: 0;
}
.fenlei a {
  display: block;
  width: 100%;
  height: 50px;
  font-size: 15px;
  padding: 5px 0px;
  color: #000;
}
.shoppingcart {
  width: 100%;
  height: 149px;
  padding: 10px 0px;
}
.dx {
  padding: 0;
  text-align: center;
}
.dx input {
  margin-top: 60px;
  width: 18px;
  height: 18px;
}
.product-img {
  padding: 0;
  width: 114px;
  height: 125px;
}
.product-img img {
  width: 100%;
  height: 100%;
}

.detail input {
  width: 30px;
  height: 20px;
  background-color: #f7f9fa;
  border: 1px solid #e9ecf0;
  text-align: center;
}
.detail-span {
  display: inline-block;
  text-align: center;
  width: 20px;
  height: 20px;
  /* vertical-align: middle; */
  background-color: #f7f9fa;
  border: 1px solid #e9ecf0;
}
.price {
  position: absolute;
  bottom: 0;
  margin: 0;
  font-size: 1rem;
  color: #ff734c;
  font-weight: 500;
}
.kg {
  width: 100%;
  height: 10px;
  background-color: #e9ecf0;
}
.d1 {
  border: 0;
  height: 139px;
  padding-bottom: 10px;
  border-bottom: 1px solid #e9ecf0;
}
.footer {
  position: fixed;
  bottom: 0;
  background-color: #fff;
  z-index: 200;
}
.footer-div {
  width: 100%;
}
.total {
  width: 400px;
  padding: 20px 20px;
  border: 1px solid #e9ecf0;
}
.total p {
  margin: 0;
  color: tomato;
  font-size: 1.2rem;
}
.pay {
  padding: 20px 20px;
  background-color: tomato;
  text-align: center;
  color: white;
}
</style>
