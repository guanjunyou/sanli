<!doctype html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="zh-cn"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" lang="zh-cn"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" lang="zh-cn"><![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="zh-cn">
<!--<![endif]-->
<style>
    .mask {
        display: none;
        position: fixed;
        left: 0;
        top: 0;
        z-index: 9998;
        background: #fff;
        height: 100%;
        width: 100%;
        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
        filter: alpha(opacity=50);
        opacity: 0.5;
    }
</style>

<head>
    <meta charset="utf-8">
    <title>管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge，chrome=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <?php $cs = Yii::app()->clientScript; ?>
    <?php $cs->registerCssFile(Yii::app()->request->baseUrl . '/static/admin/css/login.css'); ?>
    <?php $cs->registerCoreScript('jquery'); ?>
    <?php $cs->registerScriptFile(Yii::app()->request->baseUrl . '/static/admin/js/jquery.nicescroll.js'); ?>



    <?php $cs->registerScriptFile(Yii::app()->request->baseUrl . '/static/admin/js/public.js'); ?>
</head>

<body>
    <div class="wrapper">
        <div class="main">
            <?php $form = $this->beginWidget('CActiveForm', get_form_list()); ?>
            <div class="item">
                <h1>欢迎使用</h1>
            </div>
            <div class="item">
                <?php echo $form->textField($model, 'account', array('maxlength' => 50, 'class' => 'user-input', 'placeholder' => '账号')); ?>
                <?php echo $form->error($model, 'account', $htmlOptions = array()); ?>
            </div>
            <!--item end-->
            <div class="item">
                <?php echo $form->passwordField($model, 'password', array('class' => 'pwd-input', 'placeholder' => '密码')); ?>
                <?php echo $form->error($model, 'password', $htmlOptions = array()); ?>
            </div>
            <!--item end-->

            <div class="item">
                <button class="button" onclick="login();" style=" color: #ff0000">登录</button></div>
            <!--item end-->
            <?php $this->endWidget(); ?>
        </div>
        <!--main end-->
    </div>
    <!--wrapper end-->
    <div class="mask"></div>
</body>

</html>

<script>
    function login() {
        var post_data = $("#CActiveForm").serialize();
        var account = $("#Admin_account").val();
        var password = $("#Admin_password").val();
        if (account == '' || password == '') {
            alert('请输入账号密码');
            return;
        }
        $('.mask').css('display', 'block');

        var s2 = '<?php echo $this->createUrl("index/checkUser"); ?>';
        $.ajax({
            type: 'post',
            url: s2,
            data: {
                ACCOUNT: account,
                PASSWORD: password
            },
            dataType: 'json',
            success: function(data) {
                if (data.account == account) {
                    // var s22 = '../rb_hsyii/index.php';
                    // window.location.href = s22;
                    we.reload();
                } else {
                    alert(data.msg);
                    $('.mask').css('display', 'none');
                }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                console.log(XMLHttpRequest);
            }
        });
    }

    window.alert = function(str) {
        var iframe = document.createElement("IFRAME");
        iframe.style.display = "none";
        iframe.setAttribute("src", 'data:text/plain');
        document.documentElement.appendChild(iframe);
        window.frames[0].window.alert(str);
        iframe.parentNode.removeChild(iframe);
        // $('#fallr-overlay').css('display','none');   

        //  //function       Alert(strText){
        //     //   var       pWin=window.showModalDialog("b.htm",str,"dialogHeight:116px;       dialogWidth:232px;       help:       No;       resizable:       no;       status:       No;       scroll:no;       dialogTop:"+(screen.height-116)/2+"px;       dialogLeft:"+(screen.width-232)/2+"px;");
        //    //    }
    }
</script>