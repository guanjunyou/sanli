<div class="box">
    <div class="box-title c"><h1><i class="fa fa-table"></i>信息列表</h1></div><!--box-title end-->
    <div class="box-content">
        <div class="box-header">
            <a class="btn" href="javascript:;" onclick="we.reload();"><i class="fa fa-refresh"></i>刷新</a>
            <a class="btn" href="<?php echo $this->createUrl('create');?>"><i class="fa fa-plus"></i>添加栏目</a>
        </div><!--box-header end-->
        <div class="box-search">
            <form action="<?php echo Yii::app()->request->url;?>" method="get">
                <input type="hidden" name="r" value="<?php echo Yii::app()->request->getParam('r');?>">
                <input type="hidden" name="news_type" value="<?php echo Yii::app()->request->getParam('news_type');?>">
                <label style="margin-right:10px;">
                    <span>关键字：</span>
                    <input style="width:200px;" class="input-text" type="text" name="keywords" value="<?php echo Yii::app()->request->getParam('keywords');?>">
                </label>
                
                <button class="btn btn-blue" type="submit">查询</button>
            </form>
        </div><!--box-search end-->
        <div class="box-table">
            <table class="list">
                <thead>
                    <tr>
                        <th style='text-align: center;'>序号</th>
                        <th style='text-align: center;'><?php echo $model->getAttributeLabel('club_code');?></th>
                        <th style='text-align: center;'><?php echo $model->getAttributeLabel('club_name');?></th>
                        <th style='text-align: center;'><?php echo $model->getAttributeLabel('club_address');?></th>
                        <th style='text-align: center;'><?php echo $model->getAttributeLabel('apply_name');?></th>
                        <th style='text-align: center;'><?php echo $model->getAttributeLabel('contact_phone');?></th>
                        <th style='text-align: center;'><?php echo $model->getAttributeLabel('pic');?></th>
                        <th style='text-align: center;'>操作</th>
                    </tr>
                </thead>
                <tbody>
<?php 
$index = 1;
foreach($arclist as $v){ 
?>
                    <tr>
                        <td style='text-align: center;'><span class="num num-1"><?php echo $index ?></span></td>
                        <td style='text-align:left;'><?php echo $v->club_code; ?></td>
                        <td style='text-align: center;'><?php echo $v->club_name; ?></td>
                        <td style='text-align: center;'><?php echo $v->club_address; ?></td>
                        <td style='text-align: center;'><?php echo $v->apply_name; ?></td>
                        <td style='text-align: center;'><?php echo $v->contact_phone; ?></td>
                        <!-- 缩略图要改下面这一行 -->
                        <td style='text-align: center;'><?php echo BaseLib::model()->show_pic($v->pic);?></td>

 
                        <td style='text-align: center;'>
                            <a class="btn" href="<?php echo $this->createUrl('update', array('id'=>$v->id));?>" title="查看"><i class="fa fa-edit"></i></a>

                            <a class="btn" href="javascript:;" onclick="we.dele('<?php echo $v->id;?>', deleteUrl);" title="删除"><i class="fa fa-trash-o"></i></a>
                        </td>
                    </tr>
<?php $index++; } ?>
                </tbody>
            </table>
        </div><!--box-table end-->
        
        <div class="box-page c"><?php $this->page($pages);?></div>
        
    </div><!--box-content end-->
</div><!--box end-->
<script>
var deleteUrl = '<?php echo $this->createUrl('delete', array('id'=>'ID')); ?>';
</script>