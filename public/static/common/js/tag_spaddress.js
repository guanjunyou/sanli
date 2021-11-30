// 添加收货地址
function ShopAddAddress(){
    var JsonData = aeb461fdb660da59b0bf4777fab9eea;
    var url = JsonData.shop_add_address;

    var url = url;
    if (url.indexOf('?') > -1) {
        url += '&';
    } else {
        url += '?';
    }
    url += 'type=list';
    //iframe窗
    layer.open({
        type: 2,
        title: '添加收货地址',
        shadeClose: false,
        maxmin: false, //开启最大化最小化按钮
        area: ['350px', '550px'],
        content: url
    });
}

// 更新收货地址
function ShopEditAddress(addr_id){
    var JsonData = aeb461fdb660da59b0bf4777fab9eea;
    var url = JsonData.shop_edit_address;

    var url = url;
    if (url.indexOf('?') > -1) {
        url += '&';
    } else {
        url += '?';
    }
    url += 'addr_id='+addr_id;
    //iframe窗
    layer.open({
        type: 2,
        title: '添加收货地址',
        shadeClose: false,
        maxmin: false, //开启最大化最小化按钮
        area: ['350px', '550px'],
        content: url
    });
}

// 删除收货地址
function ShopDelAddress(addr_id){
    layer.confirm('是否删除收货地址？', {
        title:false,
        btn: ['是', '否'] //按钮
    }, function () {
        // 是
        var JsonData = aeb461fdb660da59b0bf4777fab9eea;
        var url = JsonData.shop_del_address;

        $.ajax({
            url: url,
            data: {addr_id:addr_id},
            type:'post',
            dataType:'json',
            success:function(res){
                layer.closeAll();
                if ('1' == res.code) {
                    layer.msg(res.msg, {time: 1500});
                    $("#"+addr_id+'_ul_li').remove();
                }else{
                    layer.msg(res.msg, {time: 2000});
                }
            }
        });
    }, function (index) {
        // 否
        layer.closeAll(index);
    });
}

// 设置默认
function SetDefault(addr_id){
    layer.confirm('是否设置为默认？', {
        title:false,
        btn: ['是', '否'] //按钮
    }, function () {
        // 是
        var JsonData = aeb461fdb660da59b0bf4777fab9eea;
        var url = JsonData.shop_set_default;

        $.ajax({
            url: url,
            data: {addr_id:addr_id},
            type:'post',
            dataType:'json',
            success:function(res){
                layer.closeAll();
                if ('1' == res.code) {
                    var spans = $('.addr-list span');
                    var id = addr_id+'_color';
                    spans.each(function(){
                        if (id == this.id) {
                            $('#'+this.id).css('color','red');
                        }else{
                             $('#'+this.id).css('color','#76838f');
                        }
                    });
                }else{
                    layer.msg(res.msg, {time: 2000});
                }
            }
        });
    }, function (index) {
        // 否
        layer.closeAll(index);
    });
}