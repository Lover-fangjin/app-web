// pages/login/login.js
const app = getApp()
let util = require('../../utils/util.js');
let api = require('../../utils/api.method.js');

Page({
  data: {
    usermsg:{},
    username: '13403423374',
    password:'',
    lofinDisabled:false,
    hidden:'true',
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    avatarUrl:'/images/logo.png',
    loginShow:'false',
    isLogin:'登录',
    isLoginDisible:'false'
  },
  onLoad: function () {
   let me = this;
    // 查看是否授权
    wx.getSetting({
      success(res) {
        if (res.authSetting['scope.userInfo']) {
          // 已经授权，可以直接调用 getUserInfo 获取头像昵称
          wx.getUserInfo({
            success: function (res) {
              app.globalData.avatarUrl = res.userInfo.avatarUrl;
              me.setData({
                showView: true,
                avatarUrl: app.globalData.avatarUrl
              })
            }
          })
        }
      }
    })
  },
  bindGetUserInfo(e) {
    let me = this;
    if (e.detail.userInfo.avatarUrl){
      me.setData({
        avatarUrl: e.detail.userInfo.avatarUrl,
        showView:true
      })
    }
    
  },
  loginSubmit: function (e) {
    let me = this;
    me.usermsg = e.detail.value;
    // console.log('me.usermsg', me.usermsg)
    if (me.usermsg.username==null) {
      wx.showModal({
        title: '提示',
        content: "请输入您的账号"
      })
    } else if (me.usermsg.password==null) {
      wx.showModal({
        title: '提示',
        content: "请输入您的密码"
      })
    } else if (me.usermsg.password!=123456){
      wx.showToast({ title: "密码错误", icon: "none" });
    }else{
      api.wxLogin(
        me.usermsg,
        function (res) {
          var _data = res.result; 
          app.globalData.userId = res.result.userId;
          app.globalData.mobile = res.result.mobile;
          app.globalData.isDuty = res.result.isDuty;
          wx.switchTab({
            url: '/pages/index/index'
          })
          me.setData({
            isLogin:'已登录',
            lofinDisabled:true
          })
        },
        function () {
          wx.showToast({ title: "账号或密码错误", icon: "none" });
        }
      )
    }
  },
})
