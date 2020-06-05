function requestApi(apiUrl,method,param,header,sFun,fFun,cFun) {
	let headlerParam = null;
	if(header == ""){ 
		headlerParam = { 'content-type': 'application/json' }; 
	}else{
		headlerParam = header;
	}
	let methodParam = null;
	if(method == ""){ 
		methodParam = "GET"; 
	}else{
		methodParam = method;
	}
	
  wx.request({
    url: apiUrl,
		method: methodParam,
    data: param,
    header: headlerParam,
    success: function (res) {
      if (apiUrl.indexOf("addwechatOpenSource") == -1){
        if (res.statusCode == 200) {
          let _resp = res.data;
          if (_resp.ErrCode == 200) {
            typeof sFun == "function" && sFun(_resp)
          } else if (_resp.ErrCode == 201) {
            _resp.IsShow == 1 ? wx.showToast({ title: _resp.ErrMsg, icon: "none" }) : wx.showToast({ title: "自定义异常", icon: "none" });
            typeof fFun == "function" && fFun(res)
          } else if (_resp.ErrCode == 203) {
            _resp.IsShow == 1 ? wx.showToast({ title: _resp.ErrMsg, icon: "none" }) : wx.showToast({ title: "系统内部错误", icon: "none" });
            typeof fFun == "function" && fFun(res)
          } else if (_resp.ErrCode == 204) {
            _resp.IsShow == 1 ? wx.showToast({ title: _resp.ErrMsg, icon: "none" }) : wx.showToast({ title: "其他错误", icon: "none" });
            typeof fFun == "function" && fFun(res)
          }
        } else {
          wx.showToast({ title: "系统内部错误", icon: "none" });
          typeof fFun == "function" && fFun(res)
        }
      }
    },
    fail: function (res) {
      if (apiUrl.indexOf("addwechatOpenSource") == -1) {
        wx.showToast({ title: "系统内部错误", icon: "none" });
        typeof fFun == "function" && fFun(res)
      }
    },
    complete: function (res){
      if (apiUrl.indexOf("addwechatOpenSource") == -1) { typeof cFun == "function" && cFun(res) }
    }
  })
}
module.exports = {  requestApi }