<div class="box">
    <div class="box-title c">
    <h1><i class="fa fa-table"></i>课程详情</h1><span class="back">
    <a class="btn" href="javascript:;" onclick="we.back();">
    <i class="fa fa-reply"></i>返回</a></span></div><!--box-title end-->
    <div class="box-detail">
     <?php  $form = $this->beginWidget('CActiveForm', get_form_list()); ?>
        <div class="box-detail-bd">
            <div style="display:block;" class="box-detail-tab-item">
                <table class="mt15">
                    <tr>
                        <td ><?php echo $form->labelEx($model, 'f_year'); ?></td>
                        <td >
                            <?php echo $form->dropDownList($model, 'f_year', Chtml::listData(base_year::model()->findALL(), 'F_NAME', 'F_NAME'), array('prompt'=>'请选择')); ?>
                            <?php echo $form->error($model, 'f_year', $htmlOptions = array()); ?>
                        </td>
                        <td ><?php echo $form->labelEx($model, 'f_term'); ?></td>
                        <td >
                            <?php echo $form->dropDownList($model, 'f_term', Chtml::listData(base_term::model()->findALL(), 'F_NAME', 'F_NAME'), array('prompt'=>'请选择')); ?>
                            <?php echo $form->error($model, 'f_term', $htmlOptions = array()); ?>
                        </td>
                    </tr>                           
                    <tr>
                        <td ><?php echo $form->labelEx($model, 'name'); ?></td>
                        <td >
                            <?php echo $form->textField($model, 'name', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'name', $htmlOptions = array()); ?>
                        </td>
                        <td ><?php echo $form->labelEx($model, 'type'); ?></td>
                        <td >
                            <?php echo $form->textField($model, 'type', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'type', $htmlOptions = array()); ?>
                        </td>
                    </tr>
                   <tr>
                        <td><?php echo $form->labelEx($model, 'introduce'); ?></td>
                        <td colspan="3">
                          <?php echo $form->textArea($model,'introduce', array('class' => 'input-text')); ?>
                          <?php echo $form->error($model, 'introduce', $htmlOptions = array()); ?>
                        </td>
                    </tr>
                      <tr>
                        <td><?php echo $form->labelEx($model, 'starttime'); ?></td>
                        <td>
                            <?php echo $form->textField($model, 'starttime', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'starttime', $htmlOptions = array()); ?>
                        </td>
                        <td><?php echo $form->labelEx($model, 'endtime'); ?></td>
                        <td>
                            <?php echo $form->textField($model, 'endtime', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'endtime', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                     <tr>
                        <td><?php echo $form->labelEx($model, 'registrationstartdate'); ?></td>
                        <td>
                            <?php echo $form->textField($model, 'registrationstartdate', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'registrationstartdate', $htmlOptions = array()); ?>
                        </td>
                        <td><?php echo $form->labelEx($model, 'registrationenddate'); ?></td>
                        <td>
                            <?php echo $form->textField($model, 'registrationenddate', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'registrationenddate', $htmlOptions = array()); ?>
                        </td>
                    </tr>
                    <tr>
                        <td><?php echo $form->labelEx($model, 'cost'); ?></td>
                        <td>
                            <?php echo $form->textField($model, 'cost', array('class' => 'input-text')); ?>元
                            <?php echo $form->error($model, 'cost', $htmlOptions = array()); ?>
                        </td>
                        <td><?php echo $form->labelEx($model, 'imagesurl'); ?></td>
                        <td>
                            
                            <?php echo $form->hiddenField($model, 'imagesurl', array('class' => 'input-text fl')); ?>
                            <!-- face_game_bigpic -->
                            <?php $picprefix='';?>
                            <?put_msg($picprefix);?>
                         <div class="upload_img fl" id="upload_pic_ClubNews_imagesurl"> 
                          <?php if(!empty($model->imagesurl)) {?>
                             <a href="<?php  if(substr($model->imagesurl,-3,3)=='gif' || substr($model->imagesurl,-4,4)=='jpeg' || substr($model->imagesurl,-3,3)=='jpg'|| substr($model->imagesurl,-3,3)=='png')
                                     echo $model->imagesurl;
                              else
                                     echo   'https://z3.ax1x.com/2021/11/06/IMh0XT.png'; ?>" target="_blank">
                             <img src="<?php if(substr($model->imagesurl,-3,3)=='gif' || substr($model->imagesurl,-4,4)=='jpeg' || substr($model->imagesurl,-3,3)=='jpg'|| substr($model->imagesurl,-3,3)=='png')
                                echo $model->imagesurl;
                                else 
                                echo '/sanli/uploads/image/fail.png';
                                ?>", width="50">
                             </a>
                             <?php }?>
                             </div>
                             
                            <script>we.uploadpic('<?php echo get_class($model);?>_imagesurl','<?php echo $picprefix;?>','','','',0);</script>
                            <?php echo $form->error($model, 'imagesurl', $htmlOptions = array()); ?></div>
                        </td>
                    </tr>
                    
                    <tr style="dispay:black;"><!--news_type=225時顯示-->
                        <td><?php echo $form->labelEx($model, 'content'); ?></td>
                        <td colspan="3">
                            <?php echo $form->hiddenField($model, 'news_content_temp', array('class' => 'input-text')); ?>
                            <script>we.editor('<?php echo get_class($model);?>_news_content_temp', '<?php echo get_class($model);?>[news_content_temp]');</script>
                            <?php echo $form->error($model, 'news_content_temp', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                </table>
            </div><!--box-detail-tab-item end-->
        </div><!--box-detail-bd end-->
    <?php 
     if (!isset($_REQUEST['news_type'])) {$_REQUEST['news_type']=0;} 
     if($_REQUEST['news_type']==1){   ?>
        <div class="mt15">
            <table class="table-title"><tr> <td>审核信息</td></tr></table>
            <table>
                <tr>
                    <td width="15%"><?php echo $form->labelEx($model, 'status'); ?></td>
                    <td width="35%">
                        <?php echo $form->radioButtonList($model, 'status', ['通过'=>'通过','驳回'=>'驳回'], array('separator'=>'', 'template'=>'<span class="radio">{input} {label}</span> ')); ?>
                        <?php echo $form->error($model, 'status'); ?>
                    </td>
                    <td width="15%"><?php echo $form->labelEx($model, 'reasons_for_failure'); ?></td>
                    <td width="35%">
                        <?php echo $form->textArea($model, 'reasons_for_failure', array('class' => 'input-text')); ?>
                        <?php echo $form->error($model, 'reasons_for_failure', $htmlOptions = array()); ?>
                    </td>
                </tr>
            </table>
        </div>
      <?php } ?>
        <div class="box-detail-submit">
          <button onclick="submitType='baocun'" class="btn btn-blue" type="submit">保存</button>
          <button onclick="submitType='shenhe'" class="btn btn-blue" type="submit">提交审核</button>
          <button class="btn" type="button" onclick="we.back();">取消</button>
         </div>
         
    
            <?php $this->endWidget();?>
  </div><!--box-detail end-->
</div><!--box end-->

<script>
we.tab('.box-detail-tab li','.box-detail-tab-item');
var club_id=0;
$('#ClubNews_starttime').on('click', function(){
WdatePicker({startDate:'%y-%M-%D 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'});});

$('#ClubNews_endtime').on('click', function(){
WdatePicker({startDate:'%y-%M-%D 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'});});

$('#ClubNews_registrationstartdate').on('click', function(){
WdatePicker({startDate:'%y-%M-%D 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'});});
$('#ClubNews_registrationenddate').on('click', function(){
WdatePicker({startDate:'%y-%M-%D 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'});});

// 滾動圖片處理
var $scroll_pic_img=$('#GameNews_scroll_pic_img');
var $upload_pic_scroll_pic_img=$('#upload_pic_scroll_pic_img');
var $upload_box_Cscroll_pic_img=$('#upload_box_scroll_pic_img');

// 添加或刪除時，更新圖片
var fnUpdatescrollPic=function(){
    var arr=[];
    $upload_pic_scroll_pic_img.find('a').each(function(){
        arr.push($(this).attr('data-savepath'));
    });
    $scroll_pic_img.val(we.implode(',',arr));
    $upload_box_scroll_pic_img.show();
    if(arr.length>=5) {
        $upload_box_scroll_pic_img.hide();
    }
};
// 上傳完成時圖片處理
var fnscrollPic=function(savename,allpath){
    $upload_pic_scroll_pic_img.append('<a class="picbox" data-savepath="'+
    savename+'" href="'+allpath+'" target="_blank"><img src="'+allpath+'" width="100"><i onclick="$(this).parent().remove();fnUpdatescrollPic();return false;"></i></a>');
    fnUpdatescrollPic();
};

$(function(){
    // 選擇視頻
    var $video_box=$('#video_box');
    var $BoutiqueVideo_club_news_pic=$('#BoutiqueVideo_club_news_pic');
    $('#video_select_btn').on('click', function(){
        $.dialog.data('video_id', 0);
        $.dialog.open('<?php echo $this->createUrl("select/material", array('type'=>253));?>',{
            id:'shipin',
            lock:true,
            opacity:0.3,
            title:'选择具体内容',
            width:'500px',
            height:'60%',
            close: function () {
                //console.log($.dialog.data('club_id'));
                if($.dialog.data('material_id')>0){
                    $BoutiqueVideo_club_news_pic.val($.dialog.data('material_id')).trigger('blur');
                    $video_box.html('<span class="label-box">'+$.dialog.data('material_title')+'</span>');
                }
            }
        });
    });

    // 刪除項目
    var $project_box=$('#project_box');
    var $VideoLive_project_list=$('#VideoLive_project_list');
    var fnUpdateProject=function(){
        var arr=[];
        var id;
        $project_box.find('span').each(function(){
            id=$(this).attr('data-id');
            arr.push(id);
        });
        $VideoLive_project_list.val(we.implode(',', arr));
    };
    
    var fnDeleteProject=function(op){
        $(op).parent().remove();
        fnUpdateProject();
    };
    

});
</script> 
