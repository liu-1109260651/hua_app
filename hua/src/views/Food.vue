<template>
  <div>
    <my-header></my-header>
    <!-- 顶部美食 -->
    <div class="top">
      <p>
        <img src="../assets/food/themes/food.png" alt="">
        <span>美食</span>
      </p>
      <span>5件商品</span>
    </div>
    <!-- 选项卡 -->
    <div class="select">
      <van-dropdown-menu active-color="#1989fa">
        <van-dropdown-item v-model="value1" :options="option1" />
        <van-dropdown-item v-model="value2" :options="option2" />
      </van-dropdown-menu>
      <!-- 商品 -->
      <router-link to="" v-for="(f,i) of food" :key="i">
        <div class="detail">
          <div class="img">
            <img :src="food[i].img" alt="">
          </div>
          <div class="right">
            <p class="title">{{food[i].title}}</p>
            <p class="price">
              ￥<span>{{food[i].price}}</span>起
            </p>
            <p class="comment">
              <span>{{food[i].comment}}</span>条评论
            </p>
            <p class="sold">
              <span>{{food[i].sold}}</span>已售
            </p>
          </div>
        </div>
        <!-- 立即购买 -->
        <div class="cart">
          <button>立即购买</button>
        </div>
      </router-link>
    </div>

    <my-footer></my-footer>
  </div>
</template>

<style scoped>
  .top{margin-top: 20px;}
  .top>p{display: flex; align-items: center; justify-content: center; margin-bottom: 8px;}
  .top img{width: 27px; height: 27px;}
  .top>p>span{font-size: 19px; margin-left: 10px;}
  .top>span{font-size: 8px; color: #999;}
  /* 选项卡 */
  .select{padding: 0 18px; margin-top: 10px;}
  /* 商品 */
  .select a{display: block; text-decoration: none; color: #000; font-family: Arial, Helvetica, sans-serif; padding-bottom: 12px; border-bottom: 1px solid #d4dae1; margin-top: 20px;}
  .detail{display: flex;}
  .detail img{width: 133px; height: 133px;}
  .detail .right{text-align: left; margin-left: 18px;}
  .detail .right .title{font-size: 19px; line-height: 23px;}
  .price {font-size: 0.7rem; margin-top: 10px;}
  .price span{font-size: 28px; font-weight: bold;}
  .comment,.sold{font-size: 14px; color: #7e808a;}
  .comment{margin-top: 20px;}
  .sold{margin-top: 10px;}
  /* 立即购买 */
  .cart{background-color: #f3f4f8; margin-top: 10px; padding: 12px 25px; text-align: right;}
  .cart button{background-color: #ff1431; color: #fff; border: none; padding: 10px 23px; font-size: 13px; border-radius: 3px;}
</style> 

<script>
export default {
  data(){
    return{
      food:{},
      value1:0,
      value2:"a",
      option1:[
        {text:"不限", value:0},
        {text:"淡茶饭", value:1},
        {text:"国宴餐厅", value:2},
        {text:"伊甸园", value:3}
      ],
      option2:[
        {text:"默认排序", value:"a"},
        {text:"价格优先", value:"b"},
        {text:"销量优先", value:"c"},
      ]
    }
  },
  mounted(){
    this.axios.get("/food/food").then(result=>{
      console.log(result);
      this.food=result.data;
      console.log(this.food)
    })
  },
  methods:{

  }
}
</script>>