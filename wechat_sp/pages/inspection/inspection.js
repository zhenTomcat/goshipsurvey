var sliderWidth = 96; // 需要设置slider的宽度，用于计算中间位置

Page({
  data: {
    tabs: ["可抢单", "抢单中", "检验中", "已完成"],
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
  onLoad: function (options) {
    const activeIndex = options.activeIndex;
    if (activeIndex) {
      this.setData({
        activeIndex: activeIndex
      });
    }
    console.log('in');
    var that = this;
    wx.getSystemInfo({
      success: function (res) {
        let w = res.windowWidth / that.data.tabs.length;
        that.setData({
          sliderLeft: (res.windowWidth / that.data.tabs.length - 96) / 2,
          sliderOffset: res.windowWidth / that.data.tabs.length * that.data.activeIndex,
          tabWidth: res.windowWidth / that.data.tabs.length
        });
        var clientHeight = res.windowHeight,
          clientWidth = res.windowWidth,
          rpxR = 750 / clientWidth;
        var calc = clientHeight * rpxR;
        that.setData({
          winHeight: calc
        });
      }
    });
    // this.requestCanPage();
  },

  tabClick: function (e) {
    this.setData({
      sliderOffset: e.currentTarget.offsetLeft,
      activeIndex: e.currentTarget.id
    });
  },

  getMore: function () {
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


  // 滚动切换标签样式
  switchTab: function (e) {
    const cur = e.detail.current;
    if (this.data.activeIndex == cur) { return false; }
    else {
      this.setData({
        sliderOffset: this.data.tabWidth * cur,
        activeIndex: cur
      });
    }
  }
});