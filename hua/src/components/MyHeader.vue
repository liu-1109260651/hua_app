<template>
  <div>
    <mt-header class="head">
      <router-link to="/" slot="left">
        <mt-button>
          <img src="../assets/images/menu.png" width="30px" height="30px" slot="icon">
        </mt-button>
      </router-link>
      <router-link to="/" slot="left" class="logo">
        <mt-button>
          <img src="../assets/images/logo.png" width="22px" height="40px" slot="icon">
        </mt-button>
      </router-link>
      <router-link to="/" slot="right" class="phone">
        <mt-button>
          <img src="../assets/images/phone.png" width="30px" height="30px" slot="icon">
        </mt-button>
      </router-link>
      <router-link to="/login" slot="right" class="me">
        <mt-button>
          <img src="../assets/images/me.png" width="30px" height="30px" slot="icon">
        </mt-button>
      </router-link>
      <router-link to="/" slot="right">
        <mt-button>
          <img src="../assets/images/cart.png" width="30px" height="30px" slot="icon">
        </mt-button>
      </router-link>
    </mt-header>

    <div class="gotop">
      <img src="../assets/index/help.png" alt="">
      
      <img @click="gotop()" src="../assets/index/gotop.png" alt="">
      
    </div>
    
  </div>
</template>
<script>
export default {
  methods:{
    gotop(){
      document.body.scrollTop = document.documentElement.scrollTop = 0
    }
  }
}
</script>
<style scoped>
.head{
  width: 100%;
  height:53px;
 padding: 15px;
  background: -webkit-gradient(linear,0 0,100% 0,from(#2a2a2f),to(#383845));
}

.logo{
  margin-left: 30px;
}
.phone,.me{
  margin-right: 30px;
}
.gotop{
  width:45px ;
  height: 95px;
  position: fixed;
  bottom:50px;
  right: 30px;
  z-index: 500;
}
.gotop img{
  width: 100%;
}
</style>