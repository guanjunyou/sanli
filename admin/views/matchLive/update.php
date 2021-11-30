    <div class="box">
    <div class="box-title c"><h1><i class="fa fa-table"></i>比赛分数修改</h1><span class="back"><a class="btn" href="javascript:;" onclick="we.back();"><i class="fa fa-reply"></i>返回</a></span></div><!--box-title end-->
    <div class="box-detail">
    <?php $form = $this->beginWidget('CActiveForm', get_form_list());?>

        <div class="box-detail-bd">
            <div style="display:block;" class="box-detail-tab-item">
         
                <div class="mt15">
                <table>
                	<tr class="table-title">
                    	<td colspan="8">比赛分数</td>
                    </tr>

                    <tr>
                        <td colspan="8">
                            <label style="margin-right:10px;">
                            赛事：           
                            <span id="match_name">
                                <!-- TODO getParam参数在哪里设置 -->
                                <input style="width:300px;" class="input-text" name="match_name" value="<?php echo Yii::app()->request->getParam('match_name');?>">  
                            </span>
                            <input id="match_select_btn" class="btn" type="button" value="选择比赛">
                            </label> 
                        </td>
                    </tr>
                    
                    <tr>
                        <!-- 一号选手局小分                                 -->
                        <td><?php echo $form->labelEx($model, 'first_game_score'); ?></td>
                        <td colspan="3">
                            <?php echo $form->textField($model, 'first_game_score', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'first_game_score', $htmlOptions = array()); ?>
                        </td>
                        <!-- 一号选手局得分 -->
                    	<td><?php echo $form->labelEx($model, 'first_score'); ?></td>
                    	<td colspan="3">
                            <?php echo $form->textField($model, 'first_score', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'first_score', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                    <tr>
                        <!-- 二号选手局小分                                 -->
                        <td><?php echo $form->labelEx($model, 'second_game_score'); ?></td>
                        <td colspan="3">
                            <?php echo $form->textField($model, 'second_game_score', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'second_game_score', $htmlOptions = array()); ?>
                        </td>
                        <!-- 二号选手局得分 -->
                    	<td><?php echo $form->labelEx($model, 'second_score'); ?></td>
                    	<td colspan="3">
                            <?php echo $form->textField($model, 'second_score', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'second_score', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                    <tr>
                        <!-- 持杆人 -->
                        <td><?php echo $form->labelEx($model, 'pole_owner'); echo '(0:一号选手;1:二号选手)'; ?></td>
                        <td colspan="1">
                            <?php echo $form->textField($model, 'pole_owner', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'pole_owner', $htmlOptions = array()); ?>
                        </td>
                        <!-- 一号选手局内单杆最高分 -->
                        <td><?php echo $form->labelEx($model, 'first_game_max');?></td>
                        <td colspan="2">
                            <?php echo $form->textField($model, 'first_game_max', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'first_game_max', $htmlOptions = array()); ?>
                        </td>
                        <!-- 二号选手局内单杆最高分 -->
                        <td><?php echo $form->labelEx($model, 'second_game_max'); ?></td>
                        <td colspan="2">
                            <?php echo $form->textField($model, 'second_game_max', array('class' => 'input-text')); ?>
                            <?php echo $form->error($model, 'second_game_max', $htmlOptions = array()); ?>
                        </td>
                    </tr>

                </table>
                </div>
              
            </div><!--box-detail-tab-item end   style="display:block;"-->
            
        </div><!--box-detail-bd end-->
        
        <div class="box-detail-submit"><button onclick="submitType='baocun'" class="btn btn-blue" type="submit">保存</button><button class="btn" type="button" onclick="we.back();">取消</button></div>
       
    <?php $this->endWidget(); ?>
    </div><!--box-detail end-->
</div><!--box end-->
<script>

var $match_name=$('#match_name');
$('#match_select_btn').on('click', function(){
      //  $.dialog.data('id', 0);
        $.dialog.open('<?php echo $this->createUrl("select/matchesInfo", array('batch'=>$model->batch));?>',{
            id:'id',
            lock:true,
            opacity:0.3,
            title:'选择比赛',
            width:'45%',
            height:'100%',
            close: function() {
                if($.dialog.data('id') > 0){
               //     id=$.dialog.data('id');
                  // $SupplierName_supplier_id.val($.dialog.data('id')).trigger('blur');
                    var name=$.dialog.data('match_name');
                    var cur_id=$.dialog.data('id');
                    $match_name.html('<input style="width:300px;" class="input-text" type="text" name="match_name" value="'+name+'">'); 
                    refresh(cur_id);
                }
            }
        });
    }
)

// 刷新进入选择的赛事比分界面
function refresh(cur_id)
{
    window.location.href='index.php?r=matchLive/update&id='+cur_id+'&batch=0';
}

</script>