App({
  onLaunch: function () {
    //获取用户信息
    // wx.getSetting({
    //   success: res => {
    //     console.log('我是res');
    //     console.log(res);
    //     if (res.authSetting['scope.userInfo']) {
    //       // 已经授权，可以直接调用 getUserInfo 获取头像昵称，不会弹框
          wx.getUserInfo({
            success: res => {
              // 可以将 res 发送给后台解码出 unionId
              this.globalData.wxUserInfo = res.userInfo
              // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
              // 所以此处加入 callback 以防止这种情况
              if (this.userInfoReadyCallback) {
                this.userInfoReadyCallback(res)
              }
            }
          })
    //     }
    //   }
    // });



    // 展示本地存储能力
    // var logs = wx.getStorageSync('logs') || []
    // logs.unshift(Date.now())
    // wx.setStorageSync('logs', logs)
    wx.clearStorageSync();
    var userInfo = wx.getStorageSync('userInfo');
    if (!userInfo) {
      const that = this;
      // 登录
      wx.login({
        success: res => {
          // 发送 res.code 到后台换取 openId, sessionKey, unionId
          console.log(res);
          if (res.code) {
            wx.request({
              url: that.webUrl + '/wechat/user/login',
              data: {
                code: res.code
              },
              success: function (res) {
                console.log(res);
                console.log(that.globalData.testInfo);
                if (res.statusCode == 200) {
                  const userInfo = res.data.userInfo;
                  wx.setStorageSync('userInfo', userInfo);
                  that.globalData.userInfo = userInfo;
                }
              },
              fail: function (e) {

              }
            })
          } else {
            console.log('获取用户登录态失败！' + res.errMsg)
            // wx.setStorageSync('init', '获取用户登录态失败！');
          }
        }
      })
    } else {
      this.globalData.userInfo = userInfo;
    }


  },
  globalData: {
    userInfo: null,
    testInfo: 'haha',
    wxUserInfo: null,
  },
  getInfo: function () {
    console.log(12);
  },
  webUrl: 'https://www.goshipsurvey.com',
  // webUrl: 'http://zhen.natapp1.cc'
})