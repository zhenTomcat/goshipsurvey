var sliderWidth = 96; // 需要设置slider的宽度，用于计算中间位置

var time = 0;
var touchDot = 0;//触摸时的原点
var interval = "";
var flag_hd = true;

Page({
  data: {
    tabs: ["可抢单", "请等待", "检验中", "已完成"],
    activeIndex: 0,
    sliderOffset: 0,
    sliderLeft: 0,
    canGetPage: { pageNo: 0, pageSize: 10, flag: true, data: [{ "name": "hah", "age": 11 }, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
    waitPage: { pageNo: 0, pageSize: 10, flag: true, data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
    ingPage: { pageNo: 0, pageSize: 10, flag: true, data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
    completePage: { pageNo: 0, pageSize: 10, flag: true, data: [0, 1, 2, 3] },
    pageNames: ["canGetPage", "waitPage", "ingPage", "completePage"],
    tabWidth: 0
  },
  onLoad: function () {
    var that = this;
    wx.getSystemInfo({
      success: function (res) {
        let w = res.windowWidth / that.data.tabs.length;
        console.log(res);
        console.log(w);
        that.setData({
          sliderLeft: (res.windowWidth / that.data.tabs.length - 96) / 2,
          sliderOffset: res.windowWidth / that.data.tabs.length * that.data.activeIndex,
          tabWidth: res.windowWidth / that.data.tabs.length
        });
      }
    });
    // this.requestCanPage();
  },

  tabClick: function (e) {
    console.log(e);
    this.setData({
      sliderOffset: e.currentTarget.offsetLeft,
      activeIndex: e.currentTarget.id
    });
  },

  onReachBottom: function (e) {
    this.requestPage(this.data.activeIndex);
  },

  requestPage: function (index, first) {
    const that = this
    const pageName = this.data.pageNames[index];
    let oldPage = this.data[pageName];
    if (oldPage.flag || first) {
      // 从服务器获取数据
      wx.showLoading({
        title: 'loading'
      });
      const newPage = { data: [9, 9, 9] };
      const newData = newPage.data;
      const flag = newData.length == oldPage.pageSize;
      const pageNo = first ? 0 : oldPage.pageNo + newData.length != 0 ? 1 : 0;
      that.setData({
        [pageName]: { pageNo: pageNo, pageSize: oldPage.pageSize, flag: flag, data: oldPage.data.concat(newData) }
      })
      wx.hideLoading();
    } else {
      wx.showToast({
        title: '到底啦!',
      });
    }
  },

  apply: function (e) {
    const that = this;
    console.log(e.currentTarget.dataset.quotation);
    // 与服务器交互
    const flag = true;
    if (flag) {
      wx.showModal({
        title: '已抢单',
        content: '我们会在第一时间提醒您抢单信息',
        showCancel: false,
        success: function () {
          that.requestPage(0, true);
        }
      })
    } else {
      wx.showModal({
        title: '抢单失败',
        content: '请稍后再试',
        showCancel: false
      })
    }

  },



  // 触摸开始事件
  touchStart: function (e) {
    touchDot = e.touches[0].pageX; // 获取触摸时的原点
    // 使用js计时器记录时间    
    interval = setInterval(function () {
      time++;
    }, 100);
  },
  // 触摸结束事件
  touchEnd: function (e) {
    var touchMove = e.changedTouches[0].pageX;
    // 向左滑动   
    if (touchMove - touchDot <= -40 && time < 10 ) {
      if (this.data.activeIndex != this.data.tabs.length - 1) {
        const newTabIndex = this.data.activeIndex + 1;
        this.setData({
          sliderOffset: this.data.tabWidth * newTabIndex,
          activeIndex: newTabIndex
        });
      }
    }
    // 向右滑动   
    if (touchMove - touchDot >= 40 && time < 10) {
      if (this.data.activeIndex != 0) {
        const newTabIndex = this.data.activeIndex - 1;
        this.setData({
          sliderOffset: this.data.tabWidth * newTabIndex,
          activeIndex: newTabIndex
        });
      }
    }
    clearInterval(interval); // 清除setInterval
    time = 0;
  }

  // requestCanPage: function () {
  //   const that = this;
  //   let page = this.data.canGetPage
  //   if (page.flag) {
  //     // 从服务器获取数据
  //     wx.showLoading({
  //       title: 'loading'
  //     });
  //     const newPage = { data: [9, 9, 9] };
  //     const newData = newPage.data;
  //     const flag = newData.length == page.pageSize;
  //     const pageNo = page.pageNo + newData.length != 0 ? 1 : 0;
  //     that.setData({
  //       canGetPage: { pageNo: pageNo, pageSize: page.pageSize, flag: flag, data: page.data.concat(newData) }
  //     })
  //     wx.hideLoading();
  //   } else {
  //     wx.showToast({
  //       title: '到底啦!',
  //     });
  //   }
  // },

  // requestWaitPage: function () {
  //   if (this.data.waitPage.flag) {

  //   }
  // },
  // requestIngPage: function () {
  //   if (this.data.ingPage.flag) {

  //   }
  // },
  // requestCompletePage: function () {
  //   if (this.data.completePage.flag) {

  //   }
  // },

});