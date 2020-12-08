<template>
  <div>
    <!-- 顶部导航栏开始 -->
    <mt-header title="个人中心" class="header">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <!-- 顶部导航栏结束 -->
    <div class="login_header" v-if="this.$store.state.isLogin == 0">
      <p>Hi,欢迎来到花礼网</p>
      <div class="login_header-div">
        <router-link to="/user_login">登录/</router-link>
        <router-link to="/user_login">注册</router-link>
      </div>
    </div>
    <div class="login_header" v-else>
      <div class="d-flex">
        <div class="tx">
          <img class="tx-img" src="../assets/login/tx_1.jpg" alt="" />
        </div>
        <div class="tx-p">
          <p style="margin:0">欢迎{{ this.$store.state.username }}用户</p>
          <div class="tx-p-div">
            <router-link to="" style="color:#fff">注册会员</router-link>
            <p @click="loginout()">注销</p>
          </div>
        </div>
      </div>
    </div>

    <div class="my_order">
      <div class="d-flex me">
        <div class="col-6" style="text-align:left">我的订单</div>
        <div class="col-6" style="text-align:right;">
          <router-link to="" style=" color:#000; text-decoration: none;"
            >全部订单></router-link
          >
        </div>
      </div>
      <mt-tabbar id="dh">
        <mt-tab-item style="  background-color: #fff;color:#000"
          >待付款
          <img src="../assets/login/my_money.png" slot="icon" alt="" />
        </mt-tab-item>
        <mt-tab-item style="  background-color: #fff; color:#000"
          >今日配送
          <img src="../assets/login/cart.png" slot="icon" alt="" />
        </mt-tab-item>
        <mt-tab-item style="  background-color: #fff;color:#000"
          >待评价
          <img src="../assets/login/pl.png" slot="icon" alt="" />
        </mt-tab-item>
      </mt-tabbar>
    </div>

    <div class="yh">
      <div class="yh_1 position-relative">
        <mt-tabbar id="">
          <mt-tab-item style="  background-color: #fff;color:#000"
            >优惠卷
            <img src="../assets/login/coupon.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >权益卡
            <img src="../assets/login/vip.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >余额
            <img src="../assets/login/coupon.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >会员积分
            <img src="../assets/login/vip_point.png" slot="icon" alt="" />
          </mt-tab-item>
        </mt-tabbar>
      </div>
      <div class="yh_2 position-relative">
        <mt-tabbar id="">
          <mt-tab-item style="  background-color: #fff;color:#000"
            >收货地址
            <img src="../assets/login/location.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >生日纪念提醒
            <img src="../assets/login/time.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >我的收藏
            <img src="../assets/login/balance.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >浏览记录
            <img src="../assets/login/look.png" slot="icon" alt="" />
          </mt-tab-item>
        </mt-tabbar>
      </div>
    </div>

    <div class="kf">
      <div class="kf_1 position-relative">
        <mt-tabbar id="">
          <mt-tab-item style="  background-color: #fff;color:#000"
            >联系客服
            <img src="../assets/login/kf.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >帮助中心
            <img src="../assets/login/help.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >关于花礼
            <img src="../assets/login/gy.png" slot="icon" alt="" />
          </mt-tab-item>
          <mt-tab-item style="  background-color: #fff;color:#000"
            >设置
            <img src="../assets/login/set.png" slot="icon" alt="" />
          </mt-tab-item>
        </mt-tabbar>
      </div>
    </div>

    <!-- 底部导航栏开始 -->
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
    <!-- 底部导航栏结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      footer: "me",
    };
  },
  methods: {
    loginout() {
      this.$store.commit("loginout");
      this.$router.push("/");
    },
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
body {
  background-color: #e5e7ec;
}
.footer {
  margin-top: 60px;
}
.header {
  background-color: #fff;
  color: #000;
  padding-top: 10px;
  font-size: 16px;
}
.login_header {
  width: 100%;
  height: 150px;
  background: url("../assets/login/bg.png") no-repeat;
  text-align: center;
  padding-top: 20px;
}
.login_header p {
  color: #fff;
}
.login_header-div {
  width: 120px;
  border-radius: 30px;
  height: 30px;
  margin: 0 auto;
  padding-top: 3px;
  background-color: #fff;
}
.login_header div > a {
  color: #000;
  text-decoration: none;
  font-size: 13px;
}
.my_order {
  width: 370px;
  height: 100px;
  margin: 0px auto;
  border: 1px solid silver;
  background-color: #fff;
  border-radius: 7px;
  box-shadow: 0px 0px 10px #e9ecf0;
  position: absolute;
  top: 160px;
  left: 16px;
  /* padding:10px 5px; */
}
.me {
  height: 30px;
  border-bottom: 1px solid #e9ecf0;
}
#dh {
  background-color: #fff;
}
.yh {
  width: 370px;
  height: 130px;
  margin: 0px auto;
  border: 1px solid silver;
  background-color: #fff;
  border-radius: 7px;
  box-shadow: 0px 0px 10px #e9ecf0;
  position: absolute;
  top: 275px;
  left: 16px;
  padding: 10px 10px;
}
.yh_1 {
  width: 100%;
  height: 35px;
  border-bottom: 1px solid silver;

  margin-top: 20px;
}
.yh_2 {
  width: 100%;
  height: 60px;
}
.kf {
  width: 370px;
  height: 60px;
  margin: 0px auto;
  border: 1px solid silver;
  background-color: #fff;
  border-radius: 7px;
  box-shadow: 0px 0px 10px #e9ecf0;
  position: absolute;
  top: 420px;
  left: 16px;
  padding: 10px 10px;
  margin-bottom: 100px;
}
.kf_1 {
  width: 100%;
  height: 25px;
  margin-top: 20px;
}
.tx {
  width: 80px;
  height: 80px;
  border-radius: 50px;
  overflow: hidden;
  margin-left: 25%;
}
.tx-img {
  width: 80px;
  height: 80px;
}
.tx-p {
  margin-top: 20px;
  margin-left: 10px;
}
.tx-p-div {
  background-color: tomato;
  color: white;
  font-size: 12px;
  border-radius: 10px;
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
