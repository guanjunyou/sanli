    <style>
    .box-table .list tr:hover td{
        background-color:transparent;
    }
    .box-table .list tr td:hover{
        background-color:#f8f8f8;
    }
</style>
<div class="box">
    <div class="box-content">
        <div>
            <form action="<?php echo Yii::app()->request->url;?>" method="get">
                <input type="hidden" name="r" value="<?php echo Yii::app()->request->getParam('r');?>">
                <label style="margin-right:10px;">
                    <span>搜索比赛:</span>
                    <input id="player_name" style="width:200px;" class="input-text" type="text" name="keywords" value="<?php echo Yii::app()->request->getParam('keywords');?>">
                </label>
                <button class="btn btn-blue" type="submit">查询</button>
            </form>
        </div><!--box-search end-->
        <div class="box-table">
            <table class="list">
                <thead>
                    <tr>
                        <th width="10%">序号</th>
                        <th width="40%">一号选手</th>
                        <th>二号选手</th>


                    </tr>
                </thead>
                <tbody>
                
               <?php foreach($arclist as $v){?>
                <tr data-id="<?php echo $v->id; ?>" first-name="<?php echo $v->first_player; ?>" second-name="<?php echo $v->second_player; ?>">
            
            <td with="10%">
                    <?php echo $v->id; ?></td>
                <td with="40%"><?php echo $v->first_player; ?></td>
                <td><?php echo $v->second_player; ?></td>
               
                </tr>
                 <?php } ?>
                </tbody>
            </table>
        </div><!--box-table end-->
        <!-- <div class="box-page c"><?php //$this->page($pages); ?></div> -->
    </div><!--box-content end-->
</div><!--box end-->
<script>
$(function(){
    var parentt = $.dialog.parent;              // 父页面window对象
    api = $.dialog.open.api;    //          art.dialog.open扩展方法
    if (!api) return;

    // 操作对话框
    api.button(
        {
            name: '取消'
        }
    );
    $('.box-table tbody tr').on('click', function(){
        $.dialog.data('id',$(this).attr('data-id'));
        $.dialog.data('first_player',$(this).attr('first-name'));
        $.dialog.data('second_player',$(this).attr('second-name'));
        $.dialog.data('match_name', $(this).attr('first-name')+"vs"+$(this).attr('second-name'));
        $.dialog.close();
    });
});
</script>
