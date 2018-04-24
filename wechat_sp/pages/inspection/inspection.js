const app = getApp();
var sliderWidth = 96; // 需要设置slider的宽度，用于计算中间位置
Page({
  data: {
    tabs: ["可抢单", "抢单中", "检验中", "已完成"],
    activeIndex: 0,
    sliderOffset: 0,
    sliderLeft: 0,
    canGetPage: { url: app.webUrl + '/wx/surveyor/quotation/canGet', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    waitPage: { url: app.webUrl + '/wx/surveyor/quotation/wait', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    ingPage: { url: app.webUrl + '/wx/surveyor/quotation/ing', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    completePage: { url: app.webUrl + '/wx/surveyor/quotation/complete', pageNo: 0, pageSize: 10, flag: true, data: [0] },
    pageNames: ["canGetPage", "waitPage", "ingPage", "completePage"],
    tabWidth: 0,
    flag: false,
    //存放当前正在进行的请求,若存在键值,说明请求正在进行
    requestIngMap: {}
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

    // this.requestCanPage();
    this.initQuotationInfo();
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
    // console.log(index + "----" + first);
    const that = this
    const pageName = that.data.pageNames[index];
    const oldPage = that.data[pageName];
    const url = oldPage.url;
    const start = first ? 0 : oldPage.pageNo * oldPage.pageSize;
    if (oldPage.flag || first) {
      // 从服务器获取数据
      wx.showLoading({
        title: 'loading'
      });
      wx.request({
        url: url,
        data: { surveyorUId: 23, start: start, length: 10 },
        method: 'GET',
        success: function (res) {
          const newPage = res.data;
          // console.log(res.data)
          const newData = newPage.data;
          const flag = newData.length == oldPage.pageSize;
          const pageNo = first ? 0 : oldPage.pageNo + (newData.length != 0 ? 1 : 0);
          let data;
          if (first) {
            data = newData;
          } else {
            data = oldPage.data.concat(newData);
          }
          oldPage.pageNo = pageNo;
          oldPage.flag = flag;
          that.setData({
            [pageName]: oldPage
          })
          wx.hideLoading();
          const requestIngMap = that.data.requestIngMap;
          delete requestIngMap['apply'];
          that.setData({
            requestIngMap: requestIngMap
          })
        }
      })
    } else {
      wx.showToast({
        title: '到底啦!',
      });
    }
  },


  apply: function (e) {
    const that = this;
    const requestIngMap = this.data.requestIngMap;
    console.log(requestIngMap);
    if (requestIngMap['apply']) {
      return;
    }
    requestIngMap['apply'] = true;
    this.setData({
      requestIngMap: requestIngMap
    })
    console.log(this.data.requestIngMap);
    let quotationId = e.currentTarget.dataset.quotation.id;
    // console.log(quotationId);
    // 与服务器交互
    // that.applyQuotation();
    wx.request({
      url: app.webUrl + "/wx/surveyor/quotation/apply",
      data: {
        surveyorUId: 23,
        quotationId: quotationId
      },
      success: function (res) {
        // console.log(res);
        wx.showModal({
          title: '已抢单',
          content: '我们会在第一时间提醒您抢单信息',
          showCancel: false,
          success: function () {
            that.requestPage(0, true);
            that.requestPage(1, true);
          }
        })
      },
      fail: function (e) {
        wx.showModal({
          title: '抢单失败',
          content: '请稍后再试',
          showCancel: false
        })
      },
      complete: function () {
      }
    })
  },

  cancelApply: function (e) {

    const that = this;
    // console.log(e.currentTarget.dataset.quotation);
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
    // console.log(e.currentTarget.dataset.quotation);
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
  },

  initQuotationInfo: function () {
    var that = this;
    wx.request({
      url: app.webUrl + "/wx/surveyor/quotation/list",
      data: {
        surveyorUId: 23
      },
      success: function (res) {
        console.log(res);
        if (res.data.canGet.length < 10) {
          that.setData({ ['canGetPage.flag']: false });
        }
        if (res.data.wait.length < 10) {
          that.setData({ ['waitPage.flag']: false });
        }
        if (res.data.ing.length < 10) {
          that.setData({ ['ingPage.flag']: false });
        }
        if (res.data.complete.length < 10) {
          that.setData({ ['completePage.flag']: false });
        }
        that.setData({
          ['canGetPage.data']: res.data.canGet,
          ['waitPage.data']: res.data.wait,
          ['ingPage.data']: res.data.ing,
          ['completePage.data']: res.data.complete
        });
      },
      fail: function (e) {

      }
    })
  },

  applyQuotation: function () {
    var that = this;
    wx.request({
      url: app.webUrl + "/wx/surveyor/quotation/apply",
      data: {
        surveyorUId: 23
      },
      success: function (res) {
        console.log(res);
        that.setData({
          flag: true
        });
      },
      fail: function (e) {

      }
    })
  }
});