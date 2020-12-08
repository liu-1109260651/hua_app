<template>
<div>
 单价：<p >{{price}}</p>
 数量：<p @click="count=count+1" aria-disabled="count >= 10">{{count}}</p>
 总价：<p>{{price*count}}</p>
 </div>
</template>
<script>
export default {
  data(){
    return{
      price:200,
      count:6,
    }
  },
  // mounted(){
  //  this.sum = this.price * this.count
  // }
}
</script>