<div class="box">
    <div class="box-title c"><h1><i class="fa fa-table"></i>单位信息</h1><span class="back"><a class="btn" href="javascript:;" onclick="we.back();"><i class="fa fa-reply"></i>返回</a></span></div><!--box-title end-->
    <div class="box-detail">
    <?php  $form = $this->beginWidget('CActiveForm', get_form_list());?>
        <div class="box-detail-tab">
            <ul class="c">
                <li class="current">基本信息</li>
            </ul>
        </div><!--box-detail-tab end-->
        <div class="box-detail-bd">
            <div style="display:block;" class="box-detail-tab-item">
                <table>
                    <tr class="table-title">
                        <td colspan="2">申请信息</td>
                    </tr>
                    <tr>
                        <td width="30%"><?php echo $form->labelEx($model, 'club_code'); ?></td>
                       <td width="30%">
                            <?php echo $form->textField($model, 'club_code', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'club_code', $htmlOptions = array()); ?>
                        </td>
                    </tr>
                    <tr>
                         <td><?php echo $form->labelEx($model, 'club_name'); ?></td>
                        <td>
                            <?php echo $form->textField($model, 'club_name', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'club_name', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                     <tr>
                         <td><?php echo $form->labelEx($model, 'club_address'); ?></td>
                        <td>
                            <?php echo $form->dateTimeField($model, 'club_address', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'club_address', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                     <tr>
                         <td><?php echo $form->labelEx($model, 'apply_name'); ?></td>
                        <td>
                            <?php echo $form->dateTimeField($model, 'apply_name', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'apply_name', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                     <tr>
                         <td><?php echo $form->labelEx($model, 'contact_phone'); ?></td>
                        <td>
                            <?php echo $form->dateTimeField($model, 'contact_phone', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'contact_phone', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                       <tr>
                         <td><?php echo $form->labelEx($model, 'pic'); ?></td>
                        <td>
                            <?php echo $form->hiddenField($model, 'pic', array('class' => 'input-text fl')); ?>
                            <!-- 改缩略图这里要改 -->
                            <!-- face_game_bigpic -->
                            <?php /*$basepath=BasePath::model()->getPath();*/
                            $picprefix='';
                            //$model->news_pic='t1234.jpg';
                            //if($basepath){ $picprefix=$basepath; }?>
                         <div class="upload_img fl" id="upload_pic_ClubList_pic"> 
                          <?php if(!empty($model->pic)) {?>
                             <a href="<?php echo $model->pic;?>" target="_blank">
                             <img src="<?php echo $model->pic;?>" width="100">
                             </a>
                             <?php }?>
                             </div>
                            <script>we.uploadpic('<?php echo get_class($model);?>_pic','<?php echo $picprefix;?>','','','',0);</script>
                            <?php echo $form->error($model, 'pic', $htmlOptions = array()); ?>
                        </td>
                    </tr>
         
                </table>
              
              
            </div><!--box-detail-tab-item end   style="display:block;"-->
            
        </div><!--box-detail-bd end-->
        
        <div class="box-detail-submit"><button onclick="submitType='baocun'" class="btn btn-blue" type="submit">保存</button><button class="btn" type="button" onclick="we.back();">取消</button></div>
       
    <?php $this->endWidget(); ?>
    </div><!--box-detail end-->
</div><!--box end-->