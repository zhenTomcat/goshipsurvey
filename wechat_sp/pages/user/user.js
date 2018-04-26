var sliderWidth = 96; // 需要设置slider的宽度，用于计算中间位置

var time = 0;
var touchDot = 0;//触摸时的原点
var interval = "";
var flag_hd = true;

const app = getApp();

Page({
  data: {
    showError: false,
    tabs: ["可抢单", "请等待", "检验中", "已完成"],
    tabWidth: 0,
    headImgUrl: null,
    userInfo:{}
  },
  onLoad: function () {
    const showError = app.globalData.userInfo == null;
    this.setData({
      showError: showError,
      userInfo: app.globalData.userInfo
    });
    if (app.globalData.wxUserInfo != null) {
      this.setData({
        headImgUrl: app.globalData.wxUserInfo.avatarUrl
      });
    }
  }
});