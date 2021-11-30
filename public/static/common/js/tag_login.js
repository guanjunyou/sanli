function tag_login(result, root_dir)
{
    var loginObj = document.getElementById(result.loginid);
    var logintxtObj = document.getElementById(result.logintxtid);
    var before_login_html = loginObj.innerHTML;
    if (logintxtObj) {
        logintxtObj.innerHTML = '加载中…';
    } else {
        loginObj.innerHTML = '加载中…';
    }
    var regObj = document.getElementById(result.regid);
    if(regObj){regObj.style.display="none";}
    var before_reg_html = regObj.innerHTML;
    //步骤一:创建异步对象
    var ajax = new XMLHttpRequest();
    //步骤二:设置请求的url参数,参数一是请求的类型,参数二是请求的url,可以带参数,动态的传递参数starName到服务端
    ajax.open("post", root_dir+"/index.php?m=api&c=Ajax&a=check_login", true);
    // 给头部添加ajax信息
    ajax.setRequestHeader("X-Requested-With","XMLHttpRequest");
    // 如果需要像 HTML 表单那样 POST 数据，请使用 setRequestHeader() 来添加 HTTP 头。然后在 send() 方法中规定您希望发送的数据：
    ajax.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    //步骤三:发送请求+数据
    ajax.send('type='+result.type);
    //步骤四:注册事件 onreadystatechange 状态改变就会调用
    ajax.onreadystatechange = function () {
        //步骤五 如果能够进到这个判断 说明 数据 完美的回来了,并且请求的页面是存在的
        if (ajax.readyState==4 && ajax.status==200) {
            var json = ajax.responseText;  
            var res = JSON.parse(json);
            if (1 == res.code) {
                if (1 == res.data.eyou_is_login) {
                    if (loginObj) {
                        var logintxtObj = document.getElementById(result.logintxtid);
                        if (logintxtObj) {
                            logintxtObj.innerHTML = res.data.login_html;
                        } else {
                            loginObj.innerHTML = res.data.login_html;
                        }
                        loginObj.attributes['href'].value = result.centreurl;
                    }
                    if (regObj) {
                        var regtxtObj = document.getElementById(result.regtxtid);
                        if (regtxtObj) {
                            regtxtObj.innerHTML = result.logout_html;
                        } else {
                            regObj.innerHTML = result.logout_html;
                        }
                        regObj.attributes['href'].value = result.logouturl;
                        regObj.style.display="inline";
                    }
                } else {
                    //  // 恢复未登录前的html文案
                    loginObj.innerHTML = before_login_html;
                    regObj.innerHTML = before_reg_html;
                    regObj.style.display="inline";
                }
            } else {
                if (loginObj) {
                    loginObj.innerHTML = '加载失败';
                }
                if (regObj) {
                    regObj.style.display="none";
                }
            }
      　}
    } 
}