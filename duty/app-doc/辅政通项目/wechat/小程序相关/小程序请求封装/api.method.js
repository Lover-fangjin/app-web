const api = require('./request.js')
const url = require('./api.config.js')

function wxSmallOpenid(param, sFun) { api.requestApi(url.wxSmallOpenid, "POST", param, "", sFun, function () {}, function () {}) }

function setWxMallUserInfo(param, sFun) { api.requestApi(url.setWxMallUserInfo, "POST", param, "", sFun, function () {}, function () {}) }

function wxSmallAppLogin(param, sFun) { api.requestApi(url.wxSmallAppLogin, "POST", param, "", sFun, function () {}, function () {}) }

function getAllProvinceInnList(param, sFun) { api.requestApi(url.getAllProvinceInnList, "GET", param, "", sFun, function () {}, function () {}) }

function getInnMallGoodsCount(param, sFun) { api.requestApi(url.getInnMallGoodsCount, "GET", param, "", sFun, function () {}, function () {}) }

function getMallShopcartListH(param, sFun) { api.requestApi(url.getMallShopcartListH, "GET", param, "", sFun, function () {}, function () {}) }

function wxCreateDecryptor(param, sFun) { api.requestApi(url.wxCreateDecryptor, "POST", param, "", sFun, function () {}, function () {}) }

function addwxSmallAppLogin(param, sFun, fFun) { api.requestApi(url.addwxSmallAppLogin, "POST", param, "", sFun, fFun, function () {}) }

function getMallPromotionListH(param, sFun) { api.requestApi(url.getMallPromotionListH, "GET", param, "", sFun, function () {}, function () {}) }

function getMallTimedkillListH(param, sFun) { api.requestApi(url.getMallTimedkillListH, "GET", param, "", sFun, function () {}, function () {}) }

function getMallSpecialListH(param, sFun) { api.requestApi(url.getMallSpecialListH, "GET", param, "", sFun, function () {}, function () {}) }

function getMallGoodsTypeListH(param, sFun) { api.requestApi(url.getMallGoodsTypeListH, "GET", param, "", sFun, function () {}, function () {}) }

function getMallGoodsInfoH(param, sFun) { api.requestApi(url.getMallGoodsInfoH, "GET", param, "", sFun, function () {}, function () {}) }

function getHotMallSearchhisList(param, sFun) { api.requestApi(url.getHotMallSearchhisList, "GET", param, "", sFun, function () {}, function () {}) }

function getMallGoodsListNewH(param, sFun) { api.requestApi(url.getMallGoodsListNewH, "GET", param, "", sFun, function () {}, function () {}) }

function getMallGoodsListSmaH(param, sFun) { api.requestApi(url.getMallGoodsListSmaH, "GET", param, "", sFun, function () {}, function () {}) }

function getMallGoodsListTextH(param, sFun) { api.requestApi(url.getMallGoodsListTextH, "GET", param, "", sFun, function () {}, function () {}) }

function addMallShopcart(param, sFun) { api.requestApi(url.addMallShopcart, "POST", param, "", sFun, function () {}, function () {}) }

function setMallShopcartState(param, sFun) { api.requestApi(url.setMallShopcartState, "POST", param, "", sFun, function () {}, function () {}) }

function wxDistributorQr(param, sFun, fFun) { api.requestApi(url.wxDistributorQr, "POST", param, "", sFun, fFun, function () {}) }

function getMallGoodsBuyInfo(param, sFun) { api.requestApi(url.getMallGoodsBuyInfo, "POST", param, "", sFun, function () {}, function () {}) }

function addOrdMallGoods(param, sFun, fFun) { api.requestApi(url.addOrdMallGoods, "POST", param, "", sFun, fFun, function () {}) }

function addOrdMallGoodsPay(param, sFun, fFun) { api.requestApi(url.addOrdMallGoodsPay, "POST", param, "", sFun, fFun, function () {}) }

function getOrdMallGoodsList(param, sFun, fFun) { api.requestApi(url.getOrdMallGoodsList, "GET", param, "", sFun, fFun, function () {}) }

function getOrdMallGoodsInfo(param, sFun, fFun) { api.requestApi(url.getOrdMallGoodsInfo, "GET", param, "", sFun, fFun, function () {}) }

function cancelOrdMallGoods(param, sFun, fFun) { api.requestApi(url.cancelOrdMallGoods, "POST", param, "", sFun, fFun, function () {}) }

function wxaddMallGoodsPush(param, sFun) { api.requestApi(url.wxaddMallGoodsPush, "POST", param, "", sFun, function () {}, function () {}) }

function getMallGroupsOrdInfo(param, sFun) { api.requestApi(url.getMallGroupsOrdInfo, "GET", param, "", sFun, function () {}, function () {}) }

function getwxSmallByOpenid(param, sFun) { api.requestApi(url.getwxSmallByOpenid, "GET", param, "", sFun, function () {}, function () {}) }

function addMallGiveOrder(param, sFun) { api.requestApi(url.addMallGiveOrder, "POST", param, "", sFun, function () {}, function () {}) }

function getMallGiveExhInfo(param, sFun) { api.requestApi(url.getMallGiveExhInfo, "POST", param, "", sFun, function () {}, function () {}) }

function getMallGiveOrderInfo(param, sFun) { api.requestApi(url.getMallGiveOrderInfo, "GET", param, "", sFun, function () {}, function () {}) }

function setMallGiveRece(param, sFun) { api.requestApi(url.setMallGiveRece, "POST", param, "", sFun, function () {}, function () {}) }

function addwechatOpenSource(param) { api.requestApi(url.addwechatOpenSource, "POST", param, "", function () {}, function () {}, function () {}) }

function getValidate(param, sFun, fFun) { api.requestApi(url.getValidate, "GET", param, "", sFun, fFun, function () {}) }

function addresllerPerInfo(param, sFun) { api.requestApi(url.addresllerPerInfo, "POST", param, "", sFun, function () {}, function () {}) }

function addWechatShare(param) { api.requestApi(url.addWechatShare, "POST", param, "", function () {}, function () {}, function () {}) }

function wxDistributorDesc(param, sFun) { api.requestApi(url.wxDistributorDesc, "POST", param, "", sFun, function () {}, function () {}) }

function getMebResellerTransList(param, sFun) { api.requestApi(url.getMebResellerTransList, "GET", param, "", sFun, function () {}, function () {}) }

function getRoomOrdStore(param, sFun) { api.requestApi(url.getRoomOrdStore, "GET", param, "", sFun, function () {}, function () {}) }

function checkMebStorePwd(param, sFun) { api.requestApi(url.checkMebStorePwd, "POST", param, "", sFun, function () {}, function () {}) }

function senStoreMsgContent(param, sFun, fFun) { api.requestApi(url.senStoreMsgContent, "POST", param, "", sFun, fFun, function () {}) }

function getActivityPopup(param, sFun) { api.requestApi(url.getActivityPopup, "GET", param, "", sFun, function () {}, function () {}) }

function givePopupRights(param, sFun, fFun) { api.requestApi(url.givePopupRights, "POST", param, "", sFun, fFun, function () {}) }

module.exports = {
  getRoomOrdStore,
  checkMebStorePwd,
  senStoreMsgContent,
  getActivityPopup,
  givePopupRights,
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
  addWechatShare,
  wxDistributorDesc,
  getMebResellerTransList
}