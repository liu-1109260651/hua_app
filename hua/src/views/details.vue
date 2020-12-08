<template>
  <div>
    <!-- 头部导航栏开始 -->
    <mt-header title="Hua.com花礼网" class="header">
      <router-link to="" slot="left">
        <mt-button
          @click="$router.back(-1)"
          class="btn"
          style="width:22px;margin-top:5px"
        >
          <img src="../assets/details/fanhui.png" solt="icon" alt="" />
        </mt-button>
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
    <!-- 头部导航栏结束 -->
    <!-- 详情页轮播图开始 -->
    <div class="detail-img">
      <mt-swipe
        :showIndicators="true"
        :auto="5000"
        :speed="500"
        :continuous="true"
      >
        <mt-swipe-item><img :src="banner.img1"/></mt-swipe-item>
        <mt-swipe-item><img :src="banner.img2"/></mt-swipe-item>
        <mt-swipe-item><img :src="banner.img3"/></mt-swipe-item>
        <mt-swipe-item><img :src="banner.img4"/></mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 详情页轮播图结束 -->

    <div class="detail position-relative">
      <div class="position-relative detail-title">
        <p>
          {{ detail.title }}-{{ detail.detail }}
          <span>{{ detail.subtitle }}</span
          ><i class="iconfont iconshoucang1"></i>
        </p>
      </div>

      <div class="price position-relative">
        <strong>￥{{ detail.price }}</strong>
        <s>￥{{ detail.delprice }}</s>
        <p class="xl">已售{{ detail.shopping }}件</p>
      </div>
    </div>
    <div class="d-flex position-relative">
      <i class="iconfont icon19-copy" style=""></i>
      <p class="app">APP下单立减5元</p>
      <i class="iconfont iconyoujiantou"></i>
    </div>

    <div class="kg"></div>
    <div class="detail_hua">
      <div class="d-flex">
        <div class="col-2 detail_hua_title">花语</div>
        <div class="col-10 detail_hua_subtitle">
          {{ detail.d_title }}
        </div>
      </div>
      <div class="d-flex">
        <div class="col-2 detail_hua_title">材料</div>
        <div class="col-10 detail_hua_subtitle">
          {{ detail.d_cl }}
        </div>
      </div>
      <div class="d-flex">
        <div class="col-2 detail_hua_title">包装</div>
        <div class="col-10 detail_hua_subtitle">
          {{ detail.d_bz }}
        </div>
      </div>
    </div>

    <div class="kg"></div>
    <div class="detail-img2">
      <p class="detail-img2-p">图片详情</p>
      <img src="../assets/details/detail_01.jpg" alt="" />
      <img src="../assets/details/detail_02.jpg" alt="" />
      <img src="../assets/details/detail_03.jpg" alt="" />
      <img src="../assets/details/detail_4.jpg" alt="" />
      <img src="../assets/details/detail_5.jpg" alt="" />
      <img src="../assets/details/detail_6.jpg" alt="" />
      <img src="../assets/details/detail_7.jpg" alt="" />
      <img src="../assets/details/detail_8.jpg" alt="" />
      <img src="../assets/details/detail_9.jpg" alt="" />
      <img src="../assets/details/detail_02.jpg" alt="" />
      <img src="../assets/details/detail_10.jpg" alt="" />
      <img src="../assets/details/detail_02.jpg" alt="" />
      <img src="../assets/details/detail_11.jpg" alt="" />

      <img src="../assets/details/detail_12.jpg" alt="" />
    </div>

    <!-- 底部导航开始 -->
    <div class="footer d-flex">
      <div class="col-2 footer-kx position-relative">
        <i class="iconfont iconkehu"></i>
        <p>客户</p>
      </div>
      <div @click="gocart" class="col-2 footer-kx position-relative">
        <i class="iconfont icongouwuche"></i>
        <span
          v-if="this.$store.state.cart_list.length > 0"
          class="cart-count"
          >{{ this.$store.state.cart_list.length }}</span
        >
        <p>购物车</p>
      </div>
      <div class="col-4 add-cart">
        <p @click="addcart">加入购物车</p>
      </div>
      <div class="col-4 shopping-lj">
        <p>立即购买</p>
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
      banner: {},
      detail: {},
    };
  },
  methods: {
    show_classify() {
      this.classify = !this.classify;
    },
    addcart(value) {
      let product = this.detail;
      this.$store.commit("add", product);
    },
    gocart() {
      if (this.$store.state.cart_list.length == 0) {
        this.$router.push("/cart");
      } else {
        this.$router.push("/ShowCart");
      }
    },
  },
  mounted() {
    window.scrollTo(0, 0);
    let lid = this.$route.params.lid;
    this.axios.get(`/product/details_banner?lid=${lid}`).then((res) => {
      this.banner = res.data.result[0];
      console.log(this.banner);
    });
    this.axios.get(`/product/details?lid=${lid}`).then((res) => {
      this.detail = res.data.result[0];
    });
  },
};
</script>
<style scoped>
.header {
  background-color: #fff;
  color: tomato;
  font-size: 18px;
}
.btn:active {
  border: none;
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
.detail-img {
  width: 100%;
  height: 451px;
}
.detail-img img {
  width: 100%;
}
.kg {
  width: 100%;
  height: 10px;
  background-color: #e9ecf0;
}
.detail {
  width: 100%;
  padding: 10px 10px;
  border-bottom: 1px solid #ccc;
  /* background-color: violet; */
}
.detail-title p {
  font-size: 0.9rem;
  padding-right: 20px;
}
.detail-title span {
  color: tomato;
  margin-left: 1rem;
}
.price {
  margin-top: 10px;
}
.price strong {
  color: tomato;
  font-size: 1.5rem;
}
.price s {
  color: #6e6e6e;
  font-size: 1rem;
  margin-left: 10px;
}
.xl {
  font-size: 14px;
  color: #808080;
  position: absolute;
  top: 5px;
  right: 0px;
}
.iconshoucang1 {
  position: absolute;
  top: 50%;
  right: 0;
  transform: translateY(-50%);
}
.icon19-copy {
  position: absolute;
  top: 50%;
  left: 2rem;
  font-size: 1.2rem;
  transform: translateY(-50%);
}
.app {
  margin-left: 60px;
  transform: translateY(30%);
}
.iconyoujiantou {
  position: absolute;
  top: 50%;
  right: 30px;
  transform: translateY(-50%);
}
.detail_hua {
  width: 100%;
  padding: 0px 10px;
}
.detail_hua_title {
  padding: 10px 10px;
  font-size: 15px;
}
.detail_hua_subtitle {
  padding: 10px 0px;
  font-size: 13px;
  border-bottom: 1px solid silver;
}
.footer {
  position: fixed;
  width: 100%;
  bottom: 0;
}
.footer > div {
  padding: 0;
  height: 70px;
  text-align: center;
  transform: translateY(30%);
}
.footer > div.footer-kx {
  font-size: 12px;
  background-color: #f7f9fa;
  border: 1px solid #f0f3f5;
}
.iconkehu {
  font-size: 20px;
  position: absolute;
  top: 0;
  left: 35%;
}
.footer-kx p {
  margin: 0;

  position: absolute;
  left: 20px;
  bottom: 25px;
}
.cart-count {
  display: inline-block;
  width: 20px;
  height: 20px;
  background-color: tomato;
  border-radius: 50%;
  padding: 2px 2px;
  color: #fff;
  position: absolute;
  top: 0;
  right: 5px;
}
.icongouwuche {
  font-size: 20px;
}
.add-cart {
  background-color: #3d4d42;
  color: #fff;
}
.add-cart p {
  margin-top: 12px;
}
.shopping-lj {
  background-color: tomato;
  color: #fff;
}
.shopping-lj p {
  margin-top: 12px;
}
.detail-img2 {
  width: 100%;
  margin-bottom: 60px;
}
.detail-img2 img {
  width: 100%;
}
.detail-img-p {
  padding: 0px 10px;
  margin-top: 20px;
}
</style>
