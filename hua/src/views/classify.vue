<template>
  <div>
    <!-- 顶部导航开始 -->
    <div class="header">
      <div class="header_div">
        <mt-field
          @keyup.enter.native="gosearch()"
          type="text"
          placeholder="搜索鲜花、蛋糕、礼品"
          class="search"
          v-model="product"
        >
        </mt-field>
      </div>
    </div>
    <!-- 顶部导航结束 -->
    <!-- <div class="classify_body">
    <div @click="rm()" :class="classify_body">
   <router-link to="">热门推荐</router-link>
   </div>
    <div class="classify_body_div">
   <router-link to="">鲜花</router-link>
    </div>
     <div class="classify_body_div">
   <router-link to="">永生花</router-link>
   </div>
    <div class="classify_body_div">
   <router-link to="">蛋糕</router-link>
    </div>
     <div class="classify_body_div">
   <router-link to="">特色礼品</router-link>
     </div>
      <div class="classify_body_div">
   <router-link to="">礼篮</router-link>
      </div>
       <div class="classify_body_div">
   <router-link to="">绿植花卉</router-link>
       </div>
  </div> -->
    <van-sidebar class="dh" v-model="activeKey">
      <van-sidebar-item title="热门推荐" />
      <van-sidebar-item title="鲜花" />
      <van-sidebar-item title="永生花" />
      <van-sidebar-item title="蛋糕" />
      <van-sidebar-item title="特色礼品" />
      <van-sidebar-item title="礼篮" />
      <van-sidebar-item title="绿植花卉" />
    </van-sidebar>
    <!-- 热门推荐展示开始 -->
    <div class="classify_detail" v-if="activeKey == 0">
      <img
        class="classify_detail_img"
        src="../assets/classify/hot.png"
        alt=""
      />
      <div class="classify_detail_div position-relative">
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_2.png"
            alt=""
          />
          <p>送恋人鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_3.png"
            alt=""
          />
          <p>送长辈鲜花</p>
        </router-link>
        <router-link to="/search" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_4.png"
            alt=""
          />
          <p>生日鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_5.png"
            alt=""
          />
          <p>礼盒鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_6.png"
            alt=""
          />
          <p>永生花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_7.png"
            alt=""
          />
          <p>蛋糕</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_8.png"
            alt=""
          />
          <p>元祖蛋糕</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_9.png"
            alt=""
          />
          <p>金箔花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_10.png"
            alt=""
          />
          <p>首饰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_11.png"
            alt=""
          />
          <p>巧克力</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_12.png"
            alt=""
          />
          <p>创意礼品</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_13.png"
            alt=""
          />
          <p>企业团购</p>
        </router-link>
      </div>
    </div>
    <!-- 热门推荐展示结束 -->

    <!-- 鲜花展示开始 -->
    <div class="classify_detail xh" v-else-if="activeKey == 1">
      <img
        class="classify_detail_img"
        src="../assets/classify/classify_14.png"
        alt=""
      />
      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">
          对象
          <p>鲜花排行榜</p>
        </div>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_15.png"
            alt=""
          />
          <p>全部</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_16.png"
            alt=""
          />
          <p>送女友鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_17.png"
            alt=""
          />
          <p>送男性鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_18.png"
            alt=""
          />
          <p>送长辈鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_19.png"
            alt=""
          />
          <p>送朋友鲜花</p>
        </router-link>
      </div>

      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">场合</div>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_20.png"
            alt=""
          />
          <p>爱情鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_21.png"
            alt=""
          />
          <p>生日鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_22.png"
            alt=""
          />
          <p>探望慰问</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_23.png"
            alt=""
          />
          <p>商务鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_24.png"
            alt=""
          />
          <p>祝贺鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_25.png"
            alt=""
          />
          <p>婚庆鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_26.png"
            alt=""
          />
          <p>道歉鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_27.png"
            alt=""
          />
          <p>哀思鲜花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_28.png"
            alt=""
          />
          <p>港澳台鲜花</p>
        </router-link>
      </div>

      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">花材</div>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/meigui.png"
            alt=""
          />
          <p>玫瑰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/klx.png" alt="" />
          <p>康乃馨</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/xrk.png" alt="" />
          <p>向日葵</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/bh.png" alt="" />
          <p>百合</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/xq.png" alt="" />
          <p>绣球</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/yjx.png" alt="" />
          <p>郁金香</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/tyh.png" alt="" />
          <p>太阳花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/mth.png" alt="" />
          <p>马蹄莲</p>
        </router-link>
      </div>

      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">玫瑰颜色</div>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/hmg.png" alt="" />
          <p>红玫瑰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/fmg.png" alt="" />
          <p>粉玫瑰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/bmg.png" alt="" />
          <p>白玫瑰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/zmg.png" alt="" />
          <p>紫玫瑰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/yellow.png"
            alt=""
          />
          <p>黄玫瑰</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/xbs.png" alt="" />
          <p>香槟色</p>
        </router-link>
      </div>

      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">类别</div>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/hs.png" alt="" />
          <p>花束</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/hh.png" alt="" />
          <p>花盒</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/zmhl.png" alt="" />
          <p>桌面花篮</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/pch.png" alt="" />
          <p>瓶插花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/gl.png" alt="" />
          <p>果篮</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/hl.png" alt="" />
          <p>开业花篮</p>
        </router-link>
      </div>

      <div class="classify_detail_div">
        <div class="dx">价格</div>
        <router-link to="" class="detail_a">
          <p class="">特价鲜花</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>150元以下</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>150-200元</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>250-350元</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>350-550元</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>550-800元</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>800元以上</p>
        </router-link>
      </div>

      <div class="classify_detail_div mb_10">
        <div class="dx">枝数</div>
        <router-link to="" class="detail_a">
          <p class="">9枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>11枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>19枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>22枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>29枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>33枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>50枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>66枝</p>
        </router-link>
        <router-link to="" class="detail_a">
          <p>99枝以上</p>
        </router-link>
      </div>
    </div>
    <!-- 鲜花展示结束 -->

    <!-- 永生花展示开始 -->
    <div class="classify_detail xh" v-else-if="activeKey == 2">
      <img
        class="classify_detail_img"
        src="../assets/classify/ysh_img.png"
        alt=""
      />
      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">
          对象
          <p>永生花排行榜</p>
        </div>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_15.png"
            alt=""
          />
          <p>全部</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/sny.png" alt="" />
          <p>送女友</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/snx.png" alt="" />
          <p>送男性</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/szb.png" alt="" />
          <p>送长辈</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/spy.png" alt="" />
          <p>送朋友</p>
        </router-link>
      </div>

      <div class="classify_detail_div position-relative mb_10">
        <div class="d-flex dx">分类</div>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/ysph.png" alt="" />
          <p>永生瓶花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/jdhh.png" alt="" />
          <p>经典花盒</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/tsysh.png" alt="" />
          <p>特色永生花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/jxmg.png" alt="" />
          <p>巨型玫瑰</p>
        </router-link>
      </div>
    </div>
    <!-- 永生花展示结束 -->

    <!-- 蛋糕展示开始 -->
    <div class="classify_detail xh" v-else-if="activeKey == 3">
      <img
        class="classify_detail_img"
        src="../assets/classify/cake.png"
        alt=""
      />
      <div class="classify_detail_div position-relative ">
        <div class=" dx">品牌</div>
        <div class="d-flex" style="flex-wrap:wrap">
          <router-link to="" class="classify_cake_a">
            <img
              class="classify_img"
              src="../assets/classify/xfxb.png"
              alt=""
            />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/yz.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/mc.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/nx.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/vt.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/bc.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img
              class="classify_img"
              src="../assets/classify/wfxz.png"
              alt=""
            />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/mk.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/gyk.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img
              class="classify_img"
              src="../assets/classify/bestcake.png"
              alt=""
            />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/xzh.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/cb.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/pyf.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/hc.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img
              class="classify_img"
              src="../assets/classify/qgdg.png"
              alt=""
            />
          </router-link>
        </div>
      </div>
    </div>
    <!-- 蛋糕展示结束 -->

    <!-- 特色礼品展示开始 -->
    <div class="classify_detail xh" v-else-if="activeKey == 4">
      <img
        class="classify_detail_img"
        src="../assets/classify/gift.png"
        alt=""
      />
      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">品牌</div>
        <div class="d-flex " style="flex-wrap:wrap">
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/all.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/te.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/ge.png" alt="" />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img
              class="classify_img"
              src="../assets/classify/dior.png"
              alt=""
            />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img
              class="classify_img"
              src="../assets/classify/mwsyj.png"
              alt=""
            />
          </router-link>
          <router-link to="" class="classify_cake_a">
            <img class="classify_img" src="../assets/classify/cat.png" alt="" />
          </router-link>
        </div>
      </div>

      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">对象</div>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a1.png" alt="" />
          <p>送女友</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a2.png" alt="" />
          <p>送男性</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a3.png" alt="" />
          <p>送长辈</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a4.png" alt="" />
          <p>送朋友</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a5.png" alt="" />
          <p>送客户</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a6.png" alt="" />
          <p>送老师</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a7.png" alt="" />
          <p>送小孩</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/a8.png" alt="" />
          <p>送领导</p>
        </router-link>
      </div>

      <div class="classify_detail_div position-relative mb_10">
        <div class="d-flex dx ">分类</div>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b1.png" alt="" />
          <p>音乐盒</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b2.png" alt="" />
          <p>金箔花</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b3.png" alt="" />
          <p>3D水晶内雕</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b4.png" alt="" />
          <p>首饰/美妆</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b5.png" alt="" />
          <p>巧克力</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b6.png" alt="" />
          <p>公仔/睡枕</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b7.png" alt="" />
          <p>家居生活</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/b8.png" alt="" />
          <p>摆件/其他</p>
        </router-link>
      </div>
    </div>
    <!-- 特色礼品展示结束 -->

    <!-- 礼篮展示开始 -->
    <div class="classify_detail xh" v-else-if="activeKey == 5">
      <img
        class="classify_detail_img"
        src="../assets/classify/hamper.png"
        alt=""
      />
      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">礼篮</div>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/ll.png" alt="" />
          <p>礼篮</p>
        </router-link>
      </div>
    </div>
    <!-- 礼篮展示结束 -->

    <!-- 绿植花卉展示开始 -->
    <div class="classify_detail xh" v-else-if="activeKey == 6">
      <img
        class="classify_detail_img"
        src="../assets/classify/plants.png"
        alt=""
      />
      <div class="classify_detail_div position-relative">
        <div class="d-flex dx">绿植花卉</div>
        <router-link to="" class="classify_detail_a">
          <img
            class="classify_img"
            src="../assets/classify/classify_15.png"
            alt=""
          />
          <p>全部</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/c1.png" alt="" />
          <p>绿色植物</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/c2.png" alt="" />
          <p>盆栽花卉</p>
        </router-link>
        <router-link to="" class="classify_detail_a">
          <img class="classify_img" src="../assets/classify/c3.png" alt="" />
          <p>多肉盆栽</p>
        </router-link>
      </div>
    </div>
    <!-- 绿植花卉展示结束 -->
    <!-- 底部导航开始 -->
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
    <!-- 底部导航结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      footer: "classify",
      product: "",
      classify_body: {
        classify_body_div: true,
        active: true,
      },
      activeKey: 0,
    };
  },
  methods: {
    // onChange(index){
    //   Notify({type:'primary',message:index})
    // }
    gosearch() {
      this.$router.push("/search");
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
.header {
  width: 100%;
  height: 70px;
}
.header_div {
  width: 100%;
  height: 70px;
  position: fixed;
  background-color: #fff;
  z-index: 200;
}
.classify_detail {
  width: 75%;
  height: 400px;
  margin-left: 25%;
  padding: 10px 20px;
  margin-bottom: 150px;
}
.classify_detail_img {
  width: 100%;
}
.classify_detail_div {
  width: 100%;
  margin-top: 10px;
  box-shadow: 0px 0px 10px #e9ecf0;
}
.classify_detail_a {
  display: inline-block;
  width: 68px;
  height: 80px;
  padding: 0;
  margin-left: 10px;
  font-size: 12px;
  color: #6e6e6e;
}
.classify_detail_a p {
  margin: 0;
  text-align: center;
}
.classify_img {
  width: 54px;
  height: 54px;
  margin-top: 20px;
}
.classify_title {
  margin-top: 10px;
  display: flex;
}
.classify_body_div {
  width: 100%;
  height: 80px;
  color: #000;
  font-size: 15px;
  text-align: center;
  padding: 40px 10px 30px 10px;
}
.search {
  width: 90%;
  border-radius: 30px;
  margin: 0 auto;
  border: 1px solid #e9ecf0;
  padding-left: 20px;
}
.search input {
  background-color: #e9ecf0;
}
.header_div {
  padding: 10px;
  border-bottom: 2px solid #e9ecf0;
}
.dh {
  width: 100px;
  height: 800px;
  position: fixed;
  border-right: 1px solid silver;
}
.dx {
  font-size: 13px;
  margin: 0;
  position: relative;
  padding: 5px 10px;
}
.xh {
  margin-top: 10px;
}
.dx p {
  margin: 0;
  position: absolute;
  top: 5px;
  right: 10px;
  color: silver;
}
.mb_10 {
  margin-bottom: 80px;
}
.detail_a p {
  width: 77px;
  height: 38px;
  padding-top: 10px;
  font-size: 0.8rem;
  color: #000;

  text-align: center;
  background-color: #f7f9fa;
}
.detail_a {
  display: inline-block;
  width: 68px;
  height: 50px;
  margin: 0px 10px;
}
.classify_cake_a {
  display: block;
  width: 89px;
  height: 51px;
  margin: 0;
  padding: 5px 5px;
  border: 1px solid seashell;
}
.classify_cake_a img {
  width: 77px;
  height: 42px;
  margin: 0;
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
/* 底部导航 */
</style>
