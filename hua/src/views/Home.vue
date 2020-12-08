<template>
  <div>
    <!-- 头部导航开始 -->
    <mt-header title="Hua.com鲜花网" class="header">
      <router-link to="/classify" slot="left">
        <mt-button icon="back">
          <img src="../assets/index/classify_header.png" slot="icon" alt="" />
        </mt-button>
      </router-link>
      <router-link to="/" slot="right">
        <mt-button icon="back">
          <img src="../assets/index/service.png" slot="icon" alt="" />
        </mt-button>
      </router-link>
    </mt-header>
    <!-- 头部导航结束 -->
    <!-- 轮播图开始 -->
    <div class="swipe">
      <mt-swipe
        :showIndicators="true"
        :auto="5000"
        :speed="500"
        :continuous="true"
      >
        <mt-swipe-item v-for="(v, k) of banner" :key="k"
          ><img :src="v.img"
        /></mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 轮播图结束 -->
    <div class="row text_small">
      <div class="col-3">
        <img src="../assets/index/gou.png" alt="" /><router-link to=""
          >认证龙头企</router-link
        >
      </div>
      <div class="col-3">
        <img src="../assets/index/gou.png" alt="" /><router-link to=""
          >15年品</router-link
        >
      </div>
      <div class="col-3">
        <img src="../assets/index/gou.png" alt="" /><router-link to=""
          >3小时送</router-link
        >
      </div>
      <div class="col-3">
        <img src="../assets/index/gou.png" alt="" /><router-link to=""
          >最近388824条</router-link
        >
      </div>
    </div>

    <mt-navbar id="dh">
      <mt-tab-item
        >鲜花
        <img src="../assets/index/flower.png" slot="icon" alt="" />
      </mt-tab-item>
      <mt-tab-item
        >永生花
        <img src="../assets/index/m_home.png" slot="icon" alt="" />
      </mt-tab-item>
      <mt-tab-item
        >蛋糕
        <img src="../assets/index/cake.png" slot="icon" alt="" />
      </mt-tab-item>
      <mt-tab-item
        >礼品
        <img src="../assets/index/gift.png" slot="icon" alt="" />
      </mt-tab-item>
      <mt-tab-item
        >企业团购
        <img src="../assets/index/group2.png" slot="icon" alt="" />
      </mt-tab-item>
    </mt-navbar>

    <div class="d-flex">
      <div class="title_1F"></div>
      <span>一秒选花</span>
    </div>

    <div class="row nowrap classify">
      <div v-for="(v, k) of classify" :key="k" class="col-4 position-relative">
        <router-link to="">
          <img :src="v.img" alt="" />
          <span>{{ v.title }}</span>
        </router-link>
      </div>
    </div>

    <div class="row nowrap classify2">
      <div
        v-for="(v, k) of classify_2"
        :key="k"
        class="col-3 position-relative"
      >
        <router-link to="">
          <img :src="v.img" alt="" />
          <span>{{ v.title }}</span>
        </router-link>
      </div>
    </div>

    <div class=" classify3 d-flex nowrap">
      <div class="col-6 bgimg_1 position-relative">
        <router-link to="">
          <p>热销榜</p>
          <p>集万千宠爱</p>
          <span>大家都在买</span>
          <span>热销22.1万</span>
        </router-link>
      </div>
      <div class="col-6 bgimg_2 position-relative">
        <router-link to="">
          <p>特价专区</p>
          <p>超值好货</p>
          <span>限时直降</span>
          <span>￥158<del style="color:#ccc">￥186</del></span>
        </router-link>
      </div>
    </div>

    <div class="row d-flex nowrap classify">
      <div
        v-for="(v, k) of classify_3"
        :key="k"
        class="col-4 position-relative"
      >
        <router-link to="">
          <img :src="v.img" alt="" />
          <span
            style="bottom:0px; z-index:0; background-color: rgb(0,0,0,0.5)"
            >{{ v.title }}</span
          >
        </router-link>
      </div>
    </div>

    <div class="kg"></div>

    <h3 class="h_3">送恋人/爱情鲜花</h3>

    <router-link
      v-for="(v, k) of product"
      :key="k"
      :to="`/details/${v.lid}`"
      class="row product d-flex nowrap"
    >
      <div class="col-6">
        <img class="product_img" :src="v.img" alt="" />
      </div>
      <div class="col-6 product_detail">
        <p class="title">{{ v.title }}</p>
        <p class="detail">{{ v.detail }}</p>
        <span>{{ v.js }}</span>
        <div class="subtitle">
          <p class="">{{ v.subtitle }}</p>
        </div>
        <div class="price position-relative">
          <strong>￥{{ v.price }}</strong>
          <s>￥{{ v.delprice }}</s>
          <p class="xl">已销售{{ v.shopping }}件</p>
          <img
            @click.stop="addshopping(v.lid)"
            class="product_cart"
            src="../assets/index/product_cart.png"
            alt=""
          />
        </div>
      </div>
    </router-link>

    <div class="kg"></div>

    <h3 class="h_3">送长辈鲜花</h3>
    <div>
      <router-link
        v-for="(v, k) of product_2"
        :key="k"
        :to="`/details/${v.lid}`"
        class="row product d-flex nowrap"
      >
        <div class="col-5">
          <img class="product_img" :src="v.img" alt="" />
        </div>
        <div class="col-5 product_detail2">
          <p class="title">{{ v.title }}</p>
          <p class="detail">{{ v.detail }}</p>
          <span>{{ v.js }}</span>
          <div class="subtitle">
            <p class="">{{ v.subtitle }}</p>
          </div>
          <div class="price position-relative">
            <strong>￥{{ v.price }}</strong>
            <s>￥{{ v.delprice }}</s>
            <p class="xl">已销售{{ v.shopping }}件</p>
            <img
              @click.stop="addshopping(v.lid)"
              class="product_cart2"
              src="../assets/index/product_cart.png"
              alt=""
            />
          </div>
        </div>
      </router-link>
    </div>
    <div class="kg"></div>

    <h3 class="h_3">永生花推荐</h3>
    <div class=" product_tj">
      <router-link v-for="(v, k) of product_3" :key="k" class="" to="">
        <img class="product_tj_img" :src="v.img" alt="" />
        <p class="yshtj">{{ v.subtitle }}</p>
        <p class="ysh_title">{{ v.title }}</p>
        <div class="price position-relative">
          <strong>￥{{ v.price }}</strong>
          <s>￥{{ v.delprice }}</s>
          <p class="xl">已销售{{ v.shopping }}件</p>
          <img
            @click.stop="addshopping3(v.lid)"
            class="product_cart"
            src="../assets/index/product_cart.png"
            alt=""
          />
        </div>
      </router-link>
    </div>

    <div class="kg"></div>

    <h3 class="h_3">蛋糕推荐</h3>
    <div class=" product_tj">
      <router-link v-for="(v, k) of product_4" :key="k" class="" to="">
        <img class="product_tj_img" :src="v.img" alt="" />
        <p class="ysh_title">{{ v.title }}</p>
        <div class="price position-relative">
          <strong>￥{{ v.price }}</strong>
          <s>￥{{ v.delprice }}</s>
          <p class="xl">已销售{{ v.shopping }}件</p>
          <img
            @click.stop="addshopping3(v.lid)"
            class="product_cart"
            src="../assets/index/product_cart.png"
            alt=""
          />
        </div>
      </router-link>
    </div>

    <div class="kg"></div>

    <h3 class="h_3">礼品推荐</h3>
    <div class=" product_tj">
      <router-link v-for="(v, k) of product_5" :key="k" class="" to="">
        <img class="product_tj_img" :src="v.img" alt="" />
        <p class="yshtj">{{ v.subtitle }}</p>
        <p class="ysh_title">{{ v.title }}</p>
        <div class="price position-relative">
          <strong>￥{{ v.price }}</strong>
          <s>￥{{ v.delprice }}</s>
          <p class="xl">已销售{{ v.shopping }}件</p>
          <img
            @click.stop="addshopping3(v.lid)"
            class="product_cart"
            src="../assets/index/product_cart.png"
            alt=""
          />
        </div>
      </router-link>
    </div>

    <!-- 底部选项卡开始 -->
    <my-footer></my-footer>
    <!-- 底部选项卡结束 -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      banner: {},
      classify: {},
      classify_2: {},
      classify_3: {},
      product: {},
      product_2: {},
      product_3: {},
      product_4: {},
      product_5: {},
    };
  },
  methods: {
    addshopping(value) {
      //  console.log(value)
      this.axios.get("/product/product_index?lid=" + value).then((res) => {
        if (res.data.code == 1) {
          let product = res.data.result[0];
          this.$store.commit("add", product);
          this.$router.push("/ShowCart");
          console.log(this.$store.state.cart_list);
          // localStorage.setItem('title',product.title)
          // localStorage.setItem('price',product.price)
          // localStorage.setItem('img',product.img)
          // localStorage.setItem('classes',product.classes)
        } else {
          this.$toast({
            message: "商品不存在",
            position: "center",
            duration: "2000",
          });
        }
      });
    },

    addshopping3(value) {
      //  console.log(value)
      this.axios.get("/product/product_index3?lid=" + value).then((res) => {
        if (res.data.code == 1) {
          let product = res.data.result[0];
          this.$store.commit("add", product);
          console.log(this.$store.state.cart_list);
          this.$router.push("/ShowCart");
          // localStorage.setItem('title',product.title)
          // localStorage.setItem('price',product.price)
          // localStorage.setItem('img',product.img)
          // localStorage.setItem('classes',product.classes)
        } else {
          this.$toast({
            message: "商品不存在",
            position: "center",
            duration: "2000",
          });
        }
      });
    },
  },
  mounted() {
    this.axios.get("/banner").then((res) => {
      console.log(res.data.result);
      this.banner = res.data.result;
    });
    this.axios.get("/classify_index").then((res) => {
      this.classify = res.data.result;
    });
    this.axios.get("/classify_index2").then((res) => {
      this.classify_2 = res.data.result;
    });
    this.axios.get("/classify_index3").then((res) => {
      this.classify_3 = res.data.result;
    });
    this.axios.get("/product_index?pid=1").then((res) => {
      this.product = res.data.result;
    });
    this.axios.get("/product_index?pid=2").then((res) => {
      this.product_2 = res.data.result;
    });
    this.axios.get("/product_index3?pid=1").then((res) => {
      this.product_3 = res.data.result;
    });
    this.axios.get("/product_index3?pid=2").then((res) => {
      this.product_4 = res.data.result;
    });
    this.axios.get("/product_index3?pid=3").then((res) => {
      this.product_5 = res.data.result;
    });
  },
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
.header {
  background-color: #435448;
  color: #ff734d;
  font-size: 18px;
}
.swipe {
  height: 180px;
}
.swipe img {
  width: 100%;
}
#index:active {
  text-decoration: none;
  color: #ff734d importent;
}
.text_small {
  font-size: 12px;
}
.text_small a {
  color: #435448;
}
.text_small a:hover {
  text-decoration: none;
}
#dh a {
  text-decoration: none;
  list-style: none;
  color: #435448;
}
.title_1F {
  width: 20px;
  height: 20px;
  border-right: 3px solid #000;
  margin-right: 10px;
  margin-top: 3px;
}
.classify {
  margin-top: 15px;
}
.classify > div img {
  width: 120px;
}
.classify > div span {
  color: #fff;
  font-size: 13px;
  position: absolute;
  bottom: 5px;
  left: 0px;
  display: inline-block;
  width: 120px;
  z-index: 50;
  text-align: center;
}
.classify2 {
  margin-top: 10px;
}
.classify2 > div img {
  width: 86px;
}
.classify2 > div span {
  display: inline-block;
  width: 86px;
  font-size: 12px;
  color: #000;
  position: absolute;
  top: 5px;
  left: 0;
  text-align: center;
}
.classify3 {
  padding: 10px 10px;
}
.bgimg_1 {
  height: 160px;
  background: url(../assets/index/classify_8.png) no-repeat;
  border: 1px solid #ccc;
  padding: 10px;
}
.bgimg_2 {
  height: 160px;
  background: url(../assets/index/classify_9.png) no-repeat;
  border: 1px solid #ccc;
  border-left: none;
  padding: 10px;
}
.bgimg_1 p:first-child,
.bgimg_2 p:first-child {
  color: #000;
  font-size: 14px;
}
.bgimg_1 p:nth-child(2),
.bgimg_2 p:nth-child(2) {
  color: #6e6e6e;
  font-size: 13px;
}
.bgimg_1 span:nth-child(3),
.bgimg_2 span:nth-child(3) {
  display: inline;
  width: 80px;
  border-radius: 10px;
  background-color: tomato;
  font-size: 13px;
  color: #fff;
  position: absolute;
  text-align: center;
  bottom: 10px;
}
.bgimg_1 span:nth-child(4),
.bgimg_2 span:nth-child(4) {
  font-size: 12px;
  color: #000;
  position: absolute;
  bottom: 10px;
  right: 0;
}
.kg {
  margin: 20px 0px;
  width: 100%;
  height: 10px;
  background-color: #e9ecf0;
}
.h_3 {
  font-size: 17px;
  text-align: center;
  padding: 20px 5px;
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
.title {
  font-size: 14px;
  padding-top: 18px;
  color: dimgrey;
}
.detail {
  font-size: 12px;
  color: #6e6e6e;
  margin-bottom: 10px;
  font-weight: 400;
  line-height: 12px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 1;
}
.product_detail span:nth-child(3) {
  display: inline;
  width: 80px;
  border-radius: 10px;
  background-color: tomato;
  font-size: 13px;
  color: #fff;
  padding: 0px 5px;
}
.subtitle {
  color: #000;
  font-size: 11px;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  margin-top: 12px;
  padding: 10px 0px;
}
.price {
  margin-top: 10px;
}
.price strong {
  color: tomato;
  font-size: 17px;
}
.price s {
  color: #6e6e6e;
  font-size: 14px;
  margin-left: 10px;
}
.xl {
  font-size: 14px;
  color: silver;
}
.product_cart {
  width: 20px;
  position: absolute;
  bottom: 15px;
  right: 0px;
}
.product_detail2 {
  padding: 0px 10px;
  margin-left: 30px;
}
.product_detail2 span:nth-child(3) {
  display: inline;
  width: 80px;
  border-radius: 10px;
  border: 1px solid tomato;
  font-size: 13px;
  color: tomato;
  padding: 0px 5px;
}
.product_cart2 {
  width: 20px;
  position: absolute;
  bottom: 15px;
  right: 0px;
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
.yshtj {
  display: inline;
  width: 80px;
  border-radius: 10px;
  border: 1px solid tomato;
  font-size: 13px;
  color: tomato;
  padding: 0px 5px;
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
</style>
