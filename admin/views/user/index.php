<div class="box">
    <div class="box-title c">
        <h1><i class="fa fa-table"></i>学生账户信息</h1>
    </div>
    <!--box-title end-->
    <div class="box-content">
        <div class="box-header">
            <a class="btn" href="javascript:;" onclick="we.reload();"><i class="fa fa-refresh"></i>刷新</a>
            <a style="display:none;" id="j-delete" class="btn" href="javascript:;" onclick="we.dele(we.checkval('.check-item input:checked'), deleteUrl);"><i class="fa fa-trash-o"></i>删除</a>
        </div>
        <!--box-header end-->
        <div class="box-search">
            <form action="<?php echo Yii::app()->request->url; ?>" method="get">

                <input type="hidden" name="r" value="<?php echo Yii::app()->request->getParam('r'); ?>">

                <label style="margin-right:10px;">
                    <span>学校：</span>
                    <span id="school_box">
                        <input style="width:50px;" class="input-text" name="school" value="<?php echo Yii::app()->request->getParam('school'); ?>">
                    </span>
                    <td colspan="1"><input id="school_select_btn" class="btn" type="button" value="选择学校"></td>
                </label>
                <label style="margin-right:10px;">
                    <span>省：</span>
                    <select name="province" id="province">
                        <option value="">请选择</option>
                        <?php foreach ($province as $v) { ?>
                            <option value="<?php echo $v->id; ?>" <?php if (Yii::app()->request->getParam('province') == $v->id) { ?> selected<?php } ?>><?php echo $v->name; ?></option>
                        <?php } ?>
                    </select>
                </label>
                <label style="margin-right:10px;">
                    <span>市：</span>
                    <select name="city" id='city'>
                        <option value="">请选择</option>
                        <?php if(isset($city)) foreach ($city as $v) { ?>
                            <option value="<?php echo $v->id; ?>" <?php if (Yii::app()->request->getParam('city') == $v->id) { ?> selected<?php } ?>><?php echo $v->name; ?></option>
                        <?php } ?>
                    </select>
                </label>
                <label style="margin-right:10px;">
                    <span>镇(县)：</span>
                    <select name="area" id="area">
                        <option value="">请选择</option>
                        <?php if(isset($area)) foreach ($area as $v) { ?>
                            <option value="<?php echo $v->id; ?>" <?php if (Yii::app()->request->getParam('area') == $v->id) { ?> selected<?php } ?>><?php echo $v->name; ?></option>
                        <?php } ?>
                    </select>
                </label>


                <button class="btn btn-blue" type="submit">查询</button>

            </form>
        </div>
        <!--box-search end-->
        <div class="box-table">

            <table class="list">
                <thead>
                    <tr>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('id'); ?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('account'); ?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('password'); ?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('name'); ?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('school'); ?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('grade'); ?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('class'); ?></th>

                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($arclist as $v) { ?>
                        <tr>
                            <td style="text-align:center"><?php echo $v->id; ?></td>
                            <td style="text-align:center"><?php echo $v->account; ?></td>
                            <td style="text-align:center"><?php echo $v->password; ?></td>
                            <td style="text-align:center"><?php echo $v->name; ?></td>
                            <td style="text-align:center"><?php echo $v->school; ?></td>
                            <td style="text-align:center"><?php echo $v->grade; ?></td>
                            <td style="text-align:center"><?php echo $v->class; ?></td>


                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <!--box-table end-->
        <div class="box-page c"><?php $this->page($pages); ?></div>
    </div>
    <!--box-content end-->
</div>
<!--box end-->
<script>
    var $school_box = $('#school_box');
    var $schoolName_school_id = $('#schoolName_school_id');
    $('#school_select_btn').on('click', function() {
        //  $.dialog.data('id', 0);
        $.dialog.open('<?php echo $this->createUrl("select/schoolName"); ?>', {
            id: 'xuexiao',
            lock: true,
            opacity: 0.3,
            title: '选择学校',
            width: '40%',
            height: '55%',
            close: function() {
                if ($.dialog.data('id') > 0) {
                    //     id=$.dialog.data('id');
                    // $SupplierName_supplier_id.val($.dialog.data('id')).trigger('blur');
                    var name = $.dialog.data('school_name');
                    $school_box.html('<input style="width:50px;" class="input-text" type="text" name="school" value="' + name + '">');
                }
            }
        });
    })

    $("#province").change(function() {
        $('#city').html("<option value=''>请选择</option>");
        $('#area').html("<option value=''>请选择</option>");
        getLocation("#province",'#city');
        // getLocation("#city",'#area');
    });

    $("#city").change(function() {
        $('#area').html("<option value=''>请选择</option>");
        getLocation("#city",'#area');
    });

    function getLocation(sourece,target) {
        var code = $(sourece).val();
        getData(code,target);
    }

    function getData(code, element) {
        $.ajax({
            url: "<?php echo $this->createUrl('select/getLocation'); ?>",
            data: {
                code: code
            },
            type: "get",
            success: function(res) {
                var data = JSON.parse(res).data;
                var str = "<option value=''>请选择</option>";
                for (var i = 0; i < data.length; i++) {
                    str += "<option value='" + data[i].id + "'>" + data[i].name + "</option>";
                }
                // //把所有<option>放到区的下拉列表里
                $(element).html(str);
            }
        });
    }
</script>