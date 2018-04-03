const app = getApp();
var sliderWidth = 96; // 需要设置slider的宽度，用于计算中间位置

Page({
  data: {
    tabs: ["可抢单", "抢单中", "检验中", "已完成"],
    activeIndex: 0,
    sliderOffset: 0,
    sliderLeft: 0,
    canGetPage: { url: app.webUrl + '/', pageName: 'canGetPage', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    waitPage: { url: app.webUrl + '/', pageName: 'waitPage', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    ingPage: { url: app.webUrl + '/', pageName: 'ingPage', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    completePage: { url: app.webUrl + '/', pageName: 'completePage', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    tabWidth: 0
  },
  onLoad: function (options) {
    const activeIndex = options.activeIndex;
    if (activeIndex) {
      this.setData({
        activeIndex: activeIndex
      });
    }
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
    const that = this;
    let oldPage = this.data[pageName];
    const pageName = oldPage.pageName;
    const url = oldPage.url;
    if (oldPage.flag || first) {
      // 从服务器获取数据
      wx.showLoading({
        title: 'loading'
      });
      wx.request({
        url: url,
        data: { userId: '' },
        method: '',
        success: function (res) {
          const newPage = res.data;
          const newData = newPage.data;
          const flag = newData.length == oldPage.pageSize;
          const pageNo = first ? 0 : oldPage.pageNo + newData.length != 0 ? 1 : 0;
          that.setData({
            [pageName]: { pageNo: pageNo, pageSize: oldPage.pageSize, flag: flag, data: oldPage.data.concat(newData) }
          })
          wx.hideLoading();
        }
      })
    } else {
      wx.showToast({
        title: '到底啦!',
      });
    }
  },
  requestAll: function () {
    wx.request({
      url: app.wenUrl + '/',
      data: { userId: 1 },
      header: {},
      method: 'GET',
      success: function (res) { },
      fail: function (res) { },
      complete: function (res) { },
    })
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

  cancelApply: function (e) {

    const that = this;
    console.log(e.currentTarget.dataset.quotation);
    // 与服务器交互
    const flag = true;
    if (flag) {
      wx.showModal({
        title: '已撤销',
        content: '成功撤销',
        showCancel: false,
        success: function () {
          that.requestPage(0, true);
          that.requestPage(1, true);
        }
      })
    } else {
      wx.showModal({
        title: '撤销失败',
        content: '请稍后再试',
        showCancel: false
      })
    }
  },

  uploadReport: function (e) {
    const that = this;
    console.log(e.currentTarget.dataset.quotation);
    wx.chooseImage({
      count: 1, // 默认9  
      sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有  
      sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有  
      success: function (res) {
        console.log(res.tempFilePaths);
        return;
        wx.uploadFile({
          url: 'https://example.weixin.qq.com/upload', //仅为示例，非真实的接口地址
          filePath: tempFilePaths[0],
          name: 'file',
          formData: {
            'user': 'test'
          },
          success: function (res) {
            var data = res.data
            //do something
          }
        })
      }
    });
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