
<div class="box">
    <div class="box-title c">
<h1><i class="fa fa-table"></i>赛事列表</h1></div><!--box-title end-->
    <div class="box-content">
        <div class="box-header">
            <a class="btn" href="javascript:;" onclick="we.reload();"><i class="fa fa-refresh"></i>刷新</a>
            <a style="display:none;" id="j-delete" class="btn" href="javascript:;" onclick="we.dele(we.checkval('.check-item input:checked'), deleteUrl);"><i class="fa fa-trash-o"></i>删除</a>
        </div><!--box-header end-->
        <!-- <div class="box-search">
            <form action="<?php echo Yii::app()->request->url;?>" method="get">
                
                <input type="hidden" name="r" value="<?php echo Yii::app()->request->getParam('r');?>">
                <label style="margin-right:10px;">
                    <span>答题时间：</span>
                    <input style="width:120px;" class="input-text" type="text" id="start_time" name="start_time" value="<?php echo Yii::app()->request->getParam('start_time',date("Y-m-d",time()+8*3600));?>">
                    <span>-</span>      
                    <input style="width:120px;" class="input-text" type="text" id="end_time" name="end_time" value="<?php echo Yii::app()->request->getParam('end_time',date("Y-m-d",time()+8*3600));?>">
                </label>

                 <label style="margin-right:10px;">
                    <span>学校：</span>
                    <span id="school_box">
                    <input style="width:50px;" class="input-text" name="school_name" value="<?php echo Yii::app()->request->getParam('school_name');?>">    
                    </span>                
                    <td colspan="1"><input id="school_select_btn" class="btn" type="button" value="选择学校"></td>
                </label> 
                <label style="margin-right:20px;">
                    <span>年级：</span>
                    <select name="grade">
                        <option value="">请选择</option>
                        <?php $grade=range(1,9); foreach($grade as $v){?>
                            <option value="<?php echo $v;?>"<?php if(Yii::app()->request->getParam('grade')==$v){?> selected<?php }?>><?php echo $v;?></option>
                        <?php }?>
                    </select>
                </label>
                <label style="margin-right:10px;">
                    <span>学生：</span>
                    <input style="width:200px;" class="input-text" type="text" placeholder="姓名" name="stu_name" value="<?php echo Yii::app()->request->getParam('stu_name');?>">
                </label>               
 
               
      <button class="btn btn-blue" type="submit">查询</button> -->

            </form>
        </div><!--box-search end-->
        <div class="box-table">
           
            <table class="list">
                <thead>
                    <tr>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('id');?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('name');?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('time');?></th>
                        <th style="text-align:center"><?php echo $model->getAttributeLabel('state');?></th> 
                        <th style='text-align: center;width: 90px'>操作</th>        
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($arclist as $v){ ?>
                    <tr>  
                        <td style="text-align:center"><?php echo $v->id; ?></td>
                        <td style="text-align:center"><?php echo $v->name; ?></td>
                        <td style="text-align:center"><?php $format_time = strtotime($v->time); echo date("Y-m-d H:i", $format_time); ?></td>
                        <td style="text-align:center"><?php echo $v->state_name; ?></td>
                        <td style='text-align: center; width: 60px'>
                        <a class="btn" href="<?php echo $this->createUrl('update', array('id'=>0,'batch'=>$v->batch));?>" title="编辑"><i class="fa fa-edit"></i></a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div><!--box-table end-->
        <div class="box-page c"><?php $this->page($pages); ?></div>
    </div><!--box-content end-->
</div><!--box end-->
<script>
var deleteUrl = '<?php echo $this->createUrl('delete', array('id'=>'ID')); ?>';
$(function(){
    var start_time=$('#start_time');
    var end_time=$('#end_time');
    start_time.on('click', function(){
        WdatePicker({startDate:'%y-%M-%D 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'});});
    end_time.on('click', function(){
         WdatePicker({startDate:'%y-%M-%D 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss '});});

});

var $school_box=$('#school_box');
var $SchoolName_school_id=$('#SchoolName_school_id');
    $('#school_select_btn').on('click', function(){
      //  $.dialog.data('id', 0);
        $.dialog.open('<?php echo $this->createUrl("select/schoolName");?>',{
            id:'xuexiao',
            lock:true,
            opacity:0.3,
            title:'选择学校',
            width:'45%',
            height:'100%',
            close: function() {
                if($.dialog.data('id') > 0){
               //     id=$.dialog.data('id');
                  // $SupplierName_supplier_id.val($.dialog.data('id')).trigger('blur');
                        var name=$.dialog.data('school_name');
                    $school_box.html('<input style="width:50px;" class="input-text" type="text" name="school_name" value="'+name+'">'); 
                }
            }
        });
    }
)



</script>

