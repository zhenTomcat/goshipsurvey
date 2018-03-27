var sliderWidth = 96; // 需要设置slider的宽度，用于计算中间位置

Page({
  data: {
    tabs: ["可抢单", "请等待", "检验中", "已完成"],
    activeIndex: 0,
    sliderOffset: 0,
    sliderLeft: 0,
    searchLoading: false,
    searchLoadingComplete: false
  },
  onLoad: function () {
    var that = this;
    wx.getSystemInfo({
      success: function (res) {
        that.setData({
          sliderLeft: (res.windowWidth / that.data.tabs.length - sliderWidth) / 2,
          sliderOffset: res.windowWidth / that.data.tabs.length * that.data.activeIndex
        });
      }
    });
  },
  tabClick: function (e) {
    this.setData({
      sliderOffset: e.currentTarget.offsetLeft,
      activeIndex: e.currentTarget.id
    });
  },

  onPullDownRefresh: function (e) {
    this.setData({
      tabs: ["可抢单aaa", "请等待", "检验中", "已完成"]
    });
    console.log("eee");
  },

  onReachBottom: function (e) {
    this.setData({
      tabs: ["可抢单bbbbbbb", "请等待sss", "检验中", "已完成"]
    });
    console.log("bbbbbbbb");
  },

  searchScrollLower: function () {
    console.log(e);
    this.setData({
      searchLoading: true
    });
  }
});