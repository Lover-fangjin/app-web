const xapp = require('./request.url.js');

// 获取用户openid
let wxSmallOpenid = `${xapp.url}/api/wxSmallOpenid`
// 更新用户信息接口名
let setWxMallUserInfo = `${xapp.url}/api/setWxMallUserInfo`
// 授权用户信息
let wxSmallAppLogin = `${xapp.url}/api/wxSmallAppLogin`
// 解密手机号信息 
let wxCreateDecryptor = `${xapp.url}/api/wxCreateDecryptor`
// 用户通过手机号注册 
let addwxSmallAppLogin = `${xapp.url}/api/addwxSmallAppLogin`

// 获取所有酒店列表
let getAllProvinceInnList = `${xapp.url}/api/getAllProvinceInnList`
// 获取当前酒店下商品数量
let getInnMallGoodsCount = `${xapp.url}/api/getInnMallGoodsCount`

// 获取广告列表
let getMallPromotionListH = `${xapp.url}/api/getMallPromotionListH`
// 限时抢购   
let getMallTimedkillListH = `${xapp.url}/api/getMallTimedkillListH`
// 专题列表 
let getMallSpecialListH = `${xapp.url}/api/getMallSpecialListH`
// 新品商品 
let getMallGoodsListNewH = `${xapp.url}/api/getMallGoodsListNewH`
// 分类商品 
let getMallGoodsListSmaH = `${xapp.url}/api/getMallGoodsListSmaH`
// 商品搜索 
let getMallGoodsListTextH = `${xapp.url}/api/getMallGoodsListTextH`

// 获取购物车信息
let getMallShopcartListH = `${xapp.url}/api/getMallShopcartListH`
// 添加购物车
let addMallShopcart = `${xapp.url}/api/addMallShopcart`
// 购物车数量修改以及删除
let setMallShopcartState = `${xapp.url}/api/setMallShopcartState`

// 获取分类列表 
let getMallGoodsTypeListH = `${xapp.url}/api/getMallGoodsTypeListH`
// 获取商品详情 
let getMallGoodsInfoH = `${xapp.url}/api/getMallGoodsInfoH`

// 获取热门搜索 
let getHotMallSearchhisList = `${xapp.url}/api/getHotMallSearchhisList`

// 获取分享二维码 
let wxDistributorQr = `${xapp.url}/api/wxDistributorQr`
// 消息推送 
let wxaddMallGoodsPush = `${xapp.url}/api/wxaddMallGoodsPush`

// 获取填写订单页面,商品信息 
let getMallGoodsBuyInfo = `${xapp.url}/api/getMallGoodsBuyInfo`
// 生成订单 
let addOrdMallGoods = `${xapp.url}/api/addOrdMallGoods`
// 获取支付签名等信息 
let addOrdMallGoodsPay = `${xapp.url}/api/addOrdMallGoodsPay`
// 获取订单列表 
let getOrdMallGoodsList = `${xapp.url}/api/getOrdMallGoodsList`
// 获取订单详情 
let getOrdMallGoodsInfo = `${xapp.url}/api/getOrdMallGoodsInfo`
// 申请退款 
let cancelOrdMallGoods = `${xapp.url}/api/cancelOrdMallGoods`

// 拼单详情 
let getMallGroupsOrdInfo = `${xapp.url}/api/getMallGroupsOrdInfo`
// 获取用户信息
let getwxSmallByOpenid = `${xapp.url}/api/getwxSmallByOpenid`

// 添加赠送订单 
let addMallGiveOrder = `${xapp.url}/api/addMallGiveOrder`
// 获取赠送展示
let getMallGiveExhInfo = `${xapp.url}/api/getMallGiveExhInfo`
// 查询赠送详情信息 
let getMallGiveOrderInfo = `${xapp.url}/api/getMallGiveOrderInfo`
// 领取赠送商品信息 
let setMallGiveRece = `${xapp.url}/api/setMallGiveRece`
// 添加微信访问信息 
let addwechatOpenSource = `${xapp.url}/api/addwechatOpenSource`

// 获取验证码--不验证是否注册 
let getValidate = `${xapp.url}/api/getValidate`
// 分销--添加分销员信息
let addresllerPerInfo = `${xapp.url}/api/addresllerPerInfo`
// 分销--生成分享参数加密串
let wxDistributorDesc = `${xapp.url}/api/wxDistributorDesc`
// 分销--添加微信分享记录
let addWechatShare = `${xapp.url}/api/addWechatShare`
// 分销--获取我的奖励 
let getMebResellerTransList = `${xapp.url}/api/getMebResellerTransList`

// 获取微商城订单是否有储值
let getRoomOrdStore = `${xapp.url}/api/getRoomOrdStore`
// 储值支付密码/验证码认证
let checkMebStorePwd = `${xapp.url}/api/checkMebStorePwd`
// 储值支付获取短信验证码
let senStoreMsgContent = `${xapp.url}/api/senStoreMsgContent`

// 公用--获取弹窗活动信息
let getActivityPopup = `${xapp.url}/api/getActivityPopup`
// 公用--领取弹窗活动权益
let givePopupRights = `${xapp.url}/api/givePopupRights`


module.exports = {
  givePopupRights,
  getActivityPopup,
  getRoomOrdStore,
  checkMebStorePwd,
  senStoreMsgContent,
  wxSmallOpenid,
  setWxMallUserInfo,
  wxSmallAppLogin,
  getAllProvinceInnList,
  getInnMallGoodsCount,
  getMallShopcartListH,
  wxCreateDecryptor,
  addwxSmallAppLogin,
  getMallPromotionListH,
  getMallTimedkillListH,
  getMallSpecialListH,
  getMallGoodsTypeListH,
  getMallGoodsInfoH,
  getHotMallSearchhisList,
  getMallGoodsListNewH,
  getMallGoodsListSmaH,
  getMallGoodsListTextH,
  addMallShopcart,
  setMallShopcartState,
  wxDistributorQr,
  getMallGoodsBuyInfo,
  addOrdMallGoods,
  addOrdMallGoodsPay,
  getOrdMallGoodsList,
  getOrdMallGoodsInfo,
  cancelOrdMallGoods,
  wxaddMallGoodsPush,
  getMallGroupsOrdInfo,
  getwxSmallByOpenid,
  addMallGiveOrder,
  getMallGiveExhInfo,
  getMallGiveOrderInfo,
  setMallGiveRece,
  addwechatOpenSource,
  getValidate,
  addresllerPerInfo,
  wxDistributorDesc,
  addWechatShare,
  getMebResellerTransList
}