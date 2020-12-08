<template>
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
        <img v-else src="../assets/index/cart_disable.png" slot="icon" alt="" />
        <span v-if="this.$store.state.cart_list.length > 0" class="cart-span">{{
          this.$store.state.cart_list.length
        }}</span>
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
</template>
<script>
export default {
  data() {
    return {
      footer: "index",
    };
  },
  methods: {},
  watch: {
    footer(value) {
      if (value == "index") {
        this.$router.push("/");
        this.footer = "index";
      } else if (value == "me") {
        this.$router.push("/login");
        this.footer = "me";
      } else if (value == "cart") {
        if (this.$store.state.cart_list.length == 0) {
          this.$router.push("/cart");
        } else {
          this.$router.push("/ShowCart");
        }
        this.footer = "cart";
      } else if (value == "classify") {
        this.$router.push("/classify");
        this.footer = "classify";
      }
    },
  },
};
</script>
<style scoped>
.footer {
  margin-top: 60px;
  z-index: 666;
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
