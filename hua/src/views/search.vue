<template>
  <div>
    <!-- 顶部导航开始 -->
    <mt-header title="Hua.com花礼网" class="header">
      <router-link to="/" slot="left">
        <mt-button class="btn" style="width:22px;margin-top:5px">
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
    <!-- 顶部导航结束 -->
    <!-- 标签页开始 -->
    <van-tabs @click="onClick">
      <van-tab title="综合">
        <!-- 综合内容开始 -->
        <div class="header-dh d-flex">
          <span @click="show_ny" :class="a == 1 ? 'active' : ''">送女友</span>
          <span @click="show_man" :class="a == 2 ? 'active' : ''">送男性</span>
          <span @click="show_py" :class="a == 3 ? 'active' : ''">送朋友</span>
          <span @click="show_zb" :class="a == 4 ? 'active' : ''">送长辈</span>
        </div>
        <div v-if="this.a == 1" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of product1"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 2" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of product2"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 3" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of product1"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 4" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of product2"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>
        <!-- 综合内容结束 -->
      </van-tab>
      <van-tab title="销量">
        <!-- 销量开始 -->
        <div class="header-dh d-flex">
          <span @click="show_ny" :class="a == 1 ? 'active' : ''">送女友</span>
          <span @click="show_man" :class="a == 2 ? 'active' : ''">送男性</span>
          <span @click="show_py" :class="a == 3 ? 'active' : ''">送朋友</span>
          <span @click="show_zb" :class="a == 4 ? 'active' : ''">送长辈</span>
        </div>

        <div v-if="this.a == 1" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_shopping"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 2" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_shopping2"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 3" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_shopping"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 4" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_shopping2"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>
        <!-- 销量结束 -->
      </van-tab>
      <van-tab title="价格">
        <!-- 价格开始 -->
        <div class="header-dh d-flex">
          <span @click="show_ny" :class="a == 1 ? 'active' : ''">送女友</span>
          <span @click="show_man" :class="a == 2 ? 'active' : ''">送男性</span>
          <span @click="show_py" :class="a == 3 ? 'active' : ''">送朋友</span>
          <span @click="show_zb" :class="a == 4 ? 'active' : ''">送长辈</span>
        </div>

        <div v-if="this.a == 1" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 2" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price2"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 3" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 4" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price2"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>
        <!-- 价格结束 -->
      </van-tab>
      <van-tab title="新品">
        <!-- 新品开始 -->
        <div class="header-dh d-flex">
          <span @click="show_ny" :class="a == 1 ? 'active' : ''">送女友</span>
          <span @click="show_man" :class="a == 2 ? 'active' : ''">送男性</span>
          <span @click="show_py" :class="a == 3 ? 'active' : ''">送朋友</span>
          <span @click="show_zb" :class="a == 4 ? 'active' : ''">送长辈</span>
        </div>
        <div v-if="this.a == 1" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price3"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 2" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price4"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 3" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price3"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>

        <div v-if="this.a == 4" class="body">
          <div class="row product">
            <div
              v-for="(item, index) of search_price4"
              :key="index"
              class=" product-detail"
            >
              <router-link class="" :to="`details/${item.lid}`">
                <img width="100%" class="" :src="item.img" alt="" />
                <div class="detail">
                  <p class="yshtj">{{ item.subtitle }}</p>
                  <p class="ysh_title">{{ item.detail }}</p>
                  <div class="price position-relative">
                    <strong>￥{{ item.price }}</strong>
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>
        <!-- 新品结束 -->
      </van-tab>
    </van-tabs>
    <!-- 标签页结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      a: 1,
      classify: false,
      product1: {},
      product2: {},
      search_price: {},
      search_price2: {},
      search_price3: {},
      search_price4: {},
      search_shopping: {},
      search_shopping2: {},
    };
  },
  methods: {
    show_classify() {
      this.classify = !this.classify;
    },
    onClick() {},
    show_ny() {
      this.a = 1;
    },
    show_man() {
      this.a = 2;
    },
    show_py() {
      this.a = 3;
    },
    show_zb() {
      this.a = 4;
    },
  },
  mounted() {
    this.axios.get("/product_index?pid=1").then((res) => {
      this.product1 = res.data.result;
    });
    this.axios.get("/product_index?pid=2").then((res) => {
      this.product2 = res.data.result;
    });
    this.axios.get("/product/search_price?pid=1").then((res) => {
      this.search_price = res.data.result;
    });
    this.axios.get("/product/search_price?pid=2").then((res) => {
      this.search_price2 = res.data.result;
    });
    this.axios.get("/product/search_shopping?pid=1").then((res) => {
      this.search_shopping = res.data.result;
    });
    this.axios.get("/product/search_shopping?pid=2").then((res) => {
      this.search_shopping2 = res.data.result;
    });
    this.axios.get("/product/search_price2?pid=1").then((res) => {
      this.search_price3 = res.data.result;
    });
    this.axios.get("/product/search_price2?pid=2").then((res) => {
      this.search_price4 = res.data.result;
    });
  },
};
</script>
<style scoped>
body a:active {
  text-decoration: none;
}
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

.header-dh {
  width: 100%;
  margin-top: 10px;
  padding-bottom: 20px;
}
.header-dh span {
  display: inline-block;
  width: 16%;
  padding: 5px 8px;
  background-color: #f7f9fa;
  margin-left: 7%;
  font-size: 0.8rem;
  text-align: center;
}
.active {
  color: tomato;
  background-color: #fff;
  border: 1px solid tomato;
}
.body {
  background-color: #e9ecf0;
}
.product {
  display: flex;
  width: 100%;
  flex-wrap: wrap;
  margin: 0;
  padding: 10px 10px;
  justify-content: space-between;
}
.product-detail {
  width: 49%;
  background-color: #fff;
  padding: 0;
  border-radius: 8px;
  margin-bottom: 10px;
}

.product-detail img {
  border-top-right-radius: 8px;
  border-top-left-radius: 8px;
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
.price {
  margin-top: 10px;
}
.price strong {
  color: tomato;
  font-size: 17px;
}
.detail {
  padding: 10px 10px;
}
</style>
