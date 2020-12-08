<template>
  <div>
    <!-- 头部导航开始 -->
    <mt-header title="登录注册" class="header">
      <router-link to="/login" slot="left">
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
    <!-- 头部导航结束 -->
    <div class="logo">
      <img src="../assets/user_login/login_logo.png" alt="" />
    </div>
    <!-- 手机验证码登录开始 -->
    <div class="login" v-if="a == '1'">
      <mt-field
        v-model="phone"
        type="text"
        label="手机号"
        placeholder="请输入手机号码"
        :attr="{ maxlength: 12 }"
        class="phone"
        :state="phoneState"
        @blur.native.capture="checkPhone"
      ></mt-field>
      <mt-field
        type="text"
        label="验证码"
        placeholder="请输入验证码"
        :attr="{ maxlength: 12 }"
        class="phone"
        ><div>获取验证码</div></mt-field
      >
      <mt-field
        v-model="password"
        type="password"
        label="密码"
        placeholder="请输入密码"
        :attr="{ maxlength: 12 }"
        :state="passwordState"
        class="phone"
        @blur.native.capture="checkPassword"
      ></mt-field>
      <mt-field
        v-model="conpassword"
        type="password"
        label="确认密码"
        placeholder="请再次输入密码"
        :attr="{ maxlength: 12 }"
        class="phone"
        :state="conpasswrodState"
        @blur.native.capture="checkConpassword"
      ></mt-field>

      <div class="login-btn" @click="user_reg">手机登录/注册</div>

      <div @click="user_login()" class="user-login">账号密码登录</div>
    </div>

    <!-- 手机验证码登录结束 -->
    <!-- 账号密码登录开始 -->
    <div class="login" v-else>
      <mt-field
        v-model="phone2"
        type="text"
        label="手机号/邮箱"
        placeholder="请输入手机号或邮箱"
        :attr="{ maxlength: 20 }"
        class="phone"
        :state="phone2State"
        @blur.native.capture="checkPhone2"
      ></mt-field>
      <mt-field
        v-model="password2"
        type="password"
        label="密码"
        placeholder="请输入密码"
        :attr="{ maxlength: 12 }"
        class="phone"
        :state="passwrod2State"
        @blur.native.capture="checkPassword2"
        ><div>忘记密码</div></mt-field
      >

      <div class="login-btn" @click="login">登录</div>

      <div @click="phone_login()" class="user-login">手机短信登录</div>
    </div>
    <!-- 账号密码登录结束 -->

    <div class="qt">
      <div class="d-1"><div class="d-2">其他登录方式</div></div>
      <div class="row">
        <div class="col-4">
          <img src="../assets/user_login/qq.png" alt="" />
          QQ
        </div>
        <div class="col-4">
          <img src="../assets/user_login/zfb.png" alt="" />
          支付宝
        </div>
        <div class="col-4">
          <img src="../assets/user_login/email.png" alt="" />
          邮箱
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      classify: false,
      a: 1,
      phone: "",
      password: "",
      phone2: "",
      password2: "",
      conpassword: "",
      phoneState: "",
      phone2State: "",
      passwordState: "",
      passwrod2State: "",
      conpasswrodState: "",
    };
  },
  methods: {
    show_classify() {
      this.classify = !this.classify;
    },
    phone_login() {
      this.a = 1;
    },
    user_login() {
      this.a = 0;
    },
    checkPhone() {
      let phoneRegExp = /^1[3-9][0-9]{9}$/;
      if (phoneRegExp.test(this.phone)) {
        this.phoneState = "success";
        return true;
      } else {
        this.phoneState = "error";
        this.$toast({
          message: "请输入正确的手机号码",
          position: "center",
          duration: "2000",
        });
        return false;
      }
    },
    checkPhone2() {
      let phoneRegExp = /^1[3-9][0-9]{9}$/;
      if (phoneRegExp.test(this.phone2)) {
        this.phone2State = "success";
        return true;
      } else {
        this.phoneState = "error";
        this.$toast({
          message: "请输入正确的手机号码",
          position: "center",
          duration: "2000",
        });
        return false;
      }
    },
    checkPassword2() {
      let passwordRegExp = /^[0-9]{7,10}$/;
      if (passwordRegExp.test(this.password2)) {
        this.password2State = "success";
        return true;
      } else {
        this.passwordState = "error";
        this.$toast({
          message: "密码长度为7~11位",
          position: "centere",
          duration: "2000",
        });
        return false;
      }
    },
    checkPassword() {
      let passwordRegExp = /^[0-9]{7,10}$/;
      if (passwordRegExp.test(this.password)) {
        this.passwordState = "success";
        return true;
      } else {
        this.passwordState = "error";
        this.$toast({
          message: "密码开头为小写字母和数组成，长度为7~11位",
          position: "centere",
          duration: "2000",
        });
        return false;
      }
    },
    checkConpassword() {
      if (this.password == this.conpassword) {
        this.conpasswrodState = "success";
        return true;
      } else {
        this.conpasswrodState = "error";
        this.$toast({
          message: "两次密码不一致",
          position: "center",
          duration: "2000",
        });
        return false;
      }
    },
    user_reg() {
      if (
        this.checkPhone() &&
        this.checkPassword() &&
        this.checkConpassword()
      ) {
        let obj = {
          phone: this.phone,
          upwd: this.password,
        };
        this.axios.post("/user/reg", this.qs.stringify(obj)).then((res) => {
          console.log(res.data);
          if (res.data.code == 1) {
            this.$store.commit("logined", this.phone);
            this.$toast({
              message: "注册成功",
              position: "center",
              duration: "2000",
            });
            this.$store.state.isLogin = 1;
            this.$router.push("/");
          } else {
            this.$toast({
              message: "用户已存在请登录",
              position: "center",
              duration: "3000",
            });
          }
        });
      } else {
        this.$toast({
          message: "用户名或密码格式错误",
          position: "center",
          duration: "2000",
        });
      }
    },
    login() {
      let obj = {
        phone: this.phone2,
        upwd: this.password2,
      };
      this.$store.dispatch("login", obj);
    },
  },
};
</script>

<style scoped>
.header {
  background-color: #fff;
  color: #000;
  font-size: 18px;
}
.btn:active {
  border: none;
}
.logo {
  margin-top: 20px;
  text-align: center;
}
.logo img {
  width: 200px;
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
.phone {
  border-bottom: 1px solid silver;
  margin: 0px 10px;
}
.phone div {
  font-size: 14px;
  color: slategray;
}
.login {
  margin: 30px 0px;
}
.login-btn {
  width: 300px;
  height: 50px;
  margin: 0 auto;
  padding: 13px 0px;
  text-align: center;
  border-radius: 25px;
  background-color: tomato;
  color: #fff;
  font-weight: 500;
  margin-top: 30px;
}
.user-login {
  width: 100%;
  height: 30px;
  padding: 5px;
  text-align: center;
  margin-top: 20px;
  color: slategray;
}
.qt {
  text-align: center;
  margin-top: 100px;
}
.d-1 {
  margin: 0px auto;
  margin: 0 30px;
  height: 50px;
  border-top: 1px solid silver;
}
.d-2 {
  width: 130px;
  margin: 0 auto;
  margin: -13px auto 10px;
  height: 20px;
  background-color: #fff;
  font-size: 14px;
  color: silver;
}
</style>
