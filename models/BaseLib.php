<?php
class BaseLib  extends BaseModel {

    public function tableName() {
        return '{{base_code}}';
    }
        /**
     * 模型验证规则
     */
    public function rules() {
        return array(    );
    }

    /**
     * 模型关联规则
     */
    public function relations() {
        return array();
    }

    /**
     * 属性标签
     */

    public function attributeLabels() {
        return array();
    }
    /**
     * Returns the static model of the specified AR class.
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function downList($datalist,$idname,$showname,$selectname,$pvalue='0') {
      $html='<select name="'.$selectname.'">';
      $html.='<option value="">请选择</option>';
      foreach($datalist as $v){
       $html.='<option value="'.$v[$idname].'"'.(($v[$idname]==$pvalue) ? ' selected >' :'>');
       $html.=$v[$showname].'</option>';
       }
       $html.='</select>';
       return $html;
    }
   
 public static function emptyArray($n=10) {
        $rs=array();
        for($i=0;$i<$n;$i++) $rs[]='';
        return $rs;
    }

  public static function sameStr($str1,$n=10) {
        $rs='';$b1='';
        for($i=1;$i<=$n;$i++) {
          $rs.=$b1.$str1.$i;
          $b1=',';
        }
        return $rs;
    }

  public function getDown($id,$title,$data,$key,$name){
    $value=Yii::app()->request->getParam($id);                
    $s1='<span>'.$title.'：</span>';
    $s1.='<select class="singleSelect" style="width: 130px;"  ';
    $s1.='name="'.$id.'">';
    $s1.='<option value="">请选择</option>';
    foreach($data as $v){
       $s2=$v->{$key};
       $s3=($s2==$value) ? ' selected' : '';
       $s1.='<option value="'.$s2.'" '.$s3.'>'.($v->{$name}).'</option>';
    }
    return $s1.'</select>';
  }

  public function tdWidth($n,$wdstr){
    $rs=$this->emptyArray($n);
      if(!empty($wdstr)){
         $data=explode(',',$wdstr);
         foreach($data as $v){
           $ds=explode(':',$v);
           $rs[$ds[0]]="style='text-align: center;width:".$ds[1].";'";
          }
    }
    return $rs;
  }
 public  function  getRandStr($length){
   //字符组合
   $str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
   $len = strlen($str)-1;
   $randstr = '';
   for ($i=0;$i<$length;$i++) {
    $num=mt_rand(0,$len);
    $randstr .= $str[$num];
   }
   return $randstr;
 }


public  function listArray($stra) {
   $rs=array();
    foreach ($stra as $v){
      $rs[$v]=$v;
    }
    return $rs;
  }

public  function tableLine($msg) {
      $s1='<table><tr class="table-title">';
      $s1.='<td>'.$msg.'</td></tr><table>';
      return $s1;
   }

public  function fieldSet($form,$v,&$i,$rtmp) {
      $s1=$this->ln().'<fieldset>'.$this->ln();
      $s1.='<legend>'.$v->f_name.'</legend>'.$this->ln().'<div>'.$this->ln();
      $s1.='<table><tr class="table-title">'.$this->ln();
      $s1.='<td>'.$this->ln();
      //,array( 'left' => '居左' , 'right' => '居右' ));
       $stra=$v->f_items; 
       $i++;
       $s1.= $form->radioButtonList($rtmp, 'f_checka['.$i.']',$this->listArray($stra) , $htmlOptions = array('separator' => '', 'class' => 'input-check', 'template' => '<span class="check">{input}{label}</span>')).$this->ln();
       $s1.="</td>".$this->ln()."</tr>".$this->ln()."</table>".$this->ln();

        $s1.='</div>'.$this->ln();
        $s1.='</fieldset>'.$this->ln();
      return $s1;
   }

public  function tableSet($form,$tmp,$tname,$rtmp,&$i) {
      $s1=$this->ln().'<fieldset>'.$this->ln();
      $s1.='<legend>'.$tname.'</legend>'.$this->ln().'<div>'.$this->ln();
      $s1.='<table>';
      
      foreach ($tmp as $v){
      $s1.='<tr class="table-title">'.$this->ln();
      $s1.='<td >'.$v->f_name.'<span class="required">*</span></td><td>'.$this->ln();
      //,array( 'left' => '居左' , 'right' => '居右' ));
       $stra=$v->f_items;
         $i++;
     
       $s1.= $form->radioButtonList($rtmp, 'f_checkb['.$i.']',$this->listArray($stra) , $htmlOptions = array('separator' => '', 'class' => 'input-check', 'template' => '<span class="check">{input}{label}</span>')).$this->ln();
       $s0=$form->error($rtmp, $v->f_name, $htmlOptions = array());
       $s1.=$s0."</td>".$this->ln()."</tr>".$this->ln();
       }
      $s1.="</table>".$this->ln();
      $s1.='</div>'.$this->ln();
      $s1.='</fieldset>'.$this->ln();
      return $s1;
   }
public  function ln() {
      return chr(13).chr(10);
   }


public function yearAndCode($code='',$pyear=''){
    return BaseYear::model()->year($pyear)." and ".BaseInfo::model()->getCodeWhere($code);
  }
  
  //  当前界面：单位审核》基本信息》<span style="color:DodgerBlue">信息审核</span>
public function title($vt,$vt1='') {
  $vt1=(empty($vt1)) ? $vt :$vt1;
  $ds=Role::model()->optername();
  return '当前界面：'.$ds[0].'》'.$vt.'》<span style="color:DodgerBlue">'.$vt.$ds[1].'</span>';
}

//传入图片地址，id名（update用）
function show_pic($flie='',$id=''){
    $html='';
    if(strlen($flie)>40){
        $html=empty($id)?'<div style="text-align:center">':
            '<div style="float: left; margin-right:10px" id="upload_pic_'.$id.'">';
        if(substr($flie,-3,3)=='pdf' || substr($flie,-4,4)=='docx' || substr($flie,-3,3)=='doc' 
           || substr($flie,-3,3)=='zip' || substr($flie,-3,3)=='rar'||substr($flie,-3,3)=='jpg'||substr($flie,-3,3)=='gif'||substr($flie,-4,4)=='jpeg'||substr($flie,-3,3)=='png')
        $html.= '<a href="'.$flie.'" target="_blank" title="点击查看">';
        else
           $html.= '<a href="https://z3.ax1x.com/2021/11/06/IMh0XT.png" target="_blank" title="格式错误">';
         //这里防止用户下载错误格式的文件，增加程序鲁棒性

        $html.= substr($flie,-3,3)=='png'||substr($flie,-3,3)=='jpg'||substr($flie,-3,3)=='gif'||substr($flie,-4,4)=='jpeg'?
            '<img src="'.$flie.'" style="max-height:80px; max-width:70px;">':'';
        $html.= substr($flie,-3,3)=='pdf'?
            '<img src="'.'/hsreport/uploads/image/pdf.png'.'" style="max-height:30px; max-width:20px;">':'';
         $html.= substr($flie,-4,4)=='docx'?
            '<img src="'.'/hsreport/uploads/image/WORD.png'.'" style="max-height:30px; max-width:20px;">':'';
        $html.= substr($flie,-3,3)=='doc'?
            '<img src="'.'/hsreport/uploads/image/WORD.png'.'" style="max-height:30px; max-width:20px;">':'';
         $html.= substr($flie,-3,3)=='zip'?
            '<img src="'.'/hsreport/uploads/image/zip.png'.'" style="max-height:30px; max-width:20px;">':'';
         $html.= substr($flie,-3,3)=='rar'?
            '<img src="'.'/hsreport/uploads/image/rar.png'.'" style="max-height:30px; max-width:20px;">':'';
         $html.= substr($flie,-4,4)!='docx' && substr($flie,-3,3)!='pdf' && substr($flie,-3,3)!='doc' && substr($flie,-3,3)!='zip' && substr($flie,-3,3)!='rar' && substr($flie,-3,3)!='jpg'&&substr($flie,-3,3)!='gif'&&substr($flie,-4,4)!='jpeg'&&substr($flie,-3,3)!='png'?
            '<img src="'.'/hsreport/uploads/image/fail.png'.'" style="max-height:30px; max-width:20px;text-align:center;">'.'文件格式错误':'';
        $html.='</a></div>';
    }
    return $html;
}


public function uploadFile($model,$attribute,$pic='jpg',$inputer=1,$div="<div>") {
  $div1='';
  $rs="";
 // $inputer=0;
  if(!empty($div)){
   $div1='</div>';
  }
  if($inputer)
    $rs="<script>we.uploadpic('".get_class($model).'_'.$attribute."','".$pic."');</script>";
  return $div.$rs.$div1;
}


public function upload($form,$model,$attributes,$pic='jpg',$inputer=1,$div="<div>") {
  $ln=$this->ln();
  $d=explode(':',$attributes);
  $fns=$d(0);
  //D(0)--D(4),s属性名，标签宽度，内容宽度，编辑去宽，和高度
  $s1='<td colspan="'.$d(1).'">'. $form->labelEx($model,$fns);
  $s1.='<span class="required">*</span></td>';
  $s1.='<td colspan="'.$d(2).'">';
  $s1.=$form->hiddenField($model, $fns, array('class' => 'input-text fl')); 
  $s1.=$this->show_pic($model->{$fns},get_class($model).'_'.$fns);
  $s1.=$this->uploadFile($model,$fns,$pic,$inputer,$div);
  $s1.= $form->error($model,$fns, $htmlOptions = array());
  $s1.= '</td>';
  return $s1;
}


public function indexTitle($vt) {
   $s1='<h2><i class="fa fa-table"></i>';
   $s1.=$this->title('申报材料',BaseYear::model()->year().'申报材料');     
}

//str=name:1:2,其中NAME为知道，1表示跨表格，2是右边 
public function getTableLine($form,$m,$str,$tr="1",$rd='') {
   return  $this->trInput($form,$m,$str,$tr,$rd);     
}

public function trInput($form,$m,$str,$tr="1",$rd='') {
  $ln=$this->ln();
  $d1=explode(',',$str);
  $s1=($tr=="1") ?'<tr style="text-align:center;">'.$ln : "";
  foreach($d1 as $v1){
    $s1.=$this->tdInput($form,$m,$v1);
   }
   return  $s1 .(($tr=="1") ?'<tr>' : "").$ln;     
}



//str=name:1:2,其中NAME为知道，1表示跨表格，2是右边 
public function tdInput($form,$m,$str) {
    $ln=$this->ln();
    $ad=array('class'=>'input-text','style'=>'height:20px');
    $ds=explode(':',$str.":1:1");
    $td0='<td  style="padding:10px;" '.(($ds[1]=='1') ? "" :' colspan="'.$ds[1].'"').' > ';
    $td1='<td '.(($ds[2]=='1') ? "" :' colspan="'.$ds[2].'"').' > '; 
    $s1=$form->labelEx($m,$ds[0]);
    $s1=$td0.$s1.'</td>'.$ln;
    $s1.=$td1.$form->textField($m,$ds[0],$ad);
    $s1.=$form->error($m,$ds[0], $htmlOptions = array()); 
    $s1.='</td>'.$ln;
   return  $s1 ;     
}


//str=name:1:2,其中NAME为知道，1表示跨表格，2是右边 
public function getAd($ad,$str) {
  $d2=explode(':',$str);
  foreach($d2 as $vs){
      $vsd=explode('=',$vs); 
      $ad[$vsd[0]]=$vsd[1];     
  }
  return  $ad;     
}



//str=name:1:2,其中NAME为属性名称，1表示属性跨表格数，2是输入框表格数
// $form 界面控件
// $M 数据模型
// $str 属性串表，用,分开
// $tr 表示生成行
public function show_td($form,$m,$str,$tr="1") {
//put_msg('line  ');
  $d=explode(';',$str);
  $s1='';
  foreach($d as $v){
    $s1.=$this->getTableLine($form,$m,$v,$tr);
   }
   return $s1;
}

public function tableInput($form,$m,$str,$tr="1") {
//put_msg('line  ');
  $d=explode(';',$str);
  $s1='';
  foreach($d as $v){
    $s1.=$this->getTableLine($form,$m,$v,$tr);
   }
   return  $s1;     
}

public function edit($form,$m,$str,$tr="1") {
  $ln=$this->ln();
  $dtr=$this->checkTr($str);
  if(indexOf($str,":")<0){
    $str.=":1:1";
  }
  $d=explode(':',$str.":300:50%");
  //D(0)--D(4),s属性名，标签宽度，内容宽度，编辑去宽，和高度
  $fildsname=$d[0];
  $s21=$fildsname."_temp";
  $s22=get_class($m);
  $s31=$s22."_".$s21;
  $s32=$s22."[".$s21."]";
  
  $s1=($dtr[0]==1) ? '<tr>' : '';

  $s1.='<td>'.$form->labelEx($m,$fildsname).'</td>'.$ln;
  $s1.='<td colspan="'.$d[2].'">'.$ln;

  $m->{$s21}=$m->{$fildsname};
  $s1.=$form->hiddenField($m,$s21, array('class' => 'input-text')).$ln; 
  $s1.='<script>'.$ln;
  $s1.="we.editor('".$s31."','".$s32."','".$d[3]."','".$d[4]."');".$ln;
  $s1.='</script>'.$ln;
  $s1.=$form->error($m,$fildsname, $htmlOptions = array()).$ln; 
  $s1.='</td>'.(($dtr[1]==1) ? '</tr>' :'').$ln;
  return  $s1;     
}

public function checkTr(&$str) {
  $tr=(indexOf($str,"[")>=0) ? 1 : 0;
  $btr=(indexOf($str,"]")>=0) ? 1 : 0;
  $str=str_replace('[','',$str);
  $str=str_replace(']','',$str);
  return array($tr,$btr);     
}

public function show_read($form,$m,$str,$tr="1") {
  $d=explode(';',$str);
  $s1='';
  foreach($d as $v){
    $s1.=$this->getTableLine($form,$m,$v,$tr,'1');
   }
   return  $s1;     
}

public function listBycode($form,$m,$atts,$code,$sp=1,$onchange='',$noneshow='') {
   $data=BaseCode::model()->getByType($code); 
   return $this->listByData($form,$m,$atts,$data,$sp,$onchange,$noneshow);
}

public function listBycode2($form,$m,$atts,$code,$sp=1,$onchange='',$noneshow='') {
   $data=BaseCode::model()->getByType2($code); 
   return $this->listByData($form,$m,$atts,$data,$sp,$onchange,$noneshow);
}

public function listByData($form,$m,$atts,$data,$sp,$onchange='',$noneshow='') {
   
   $atts0.=':1:'.$sp;
   $shownName="f_name:f_name";
   return  $this->selectByData($form,$m,$atts0,$data,$shownName,$onchange,$noneshow);
}

public function selectByData($form,$m,$atts0,$data,$shownName,$onchange='',$noneshow='') {
   $dtr=$this->checkTr($atts0);
   $ds=explode(':',$atts0.":1:1");
   $atts=$ds[0];
   $ds1=explode(':',$shownName.":".$shownName);
   $ln=$this->ln();

   $s1=($dtr[0]==1) ?'<tr>' :'';
   if($ds[1]!=='0'){ //标识只显示一列
       $s1.='<td '.(($ds[1]=='1') ? "" :' colspan="'.$ds[1].'"').'>'.$ln;
       if(!empty($noneshow)) $s1.='<span id="'.$atts.'_label" style="display: none">';
       $s1.= $form->labelEx($m,$atts);
       if(!empty($noneshow)) $s1.='<span class="required">*</span></span>';
       $s1.='</td>'.$ln;
    }
   if(!empty($noneshow)) $s1.='<span id="'.$atts.'_content" style="display: none">';
   $s1.='<td '.(($ds[2]=='1') ? "" :' colspan="'.$ds[2].'"').'>'.$ln;
   $s01=Chtml::listData($data, $ds1[0], $ds1[1]);
   $s02=array('prompt'=>'请选择','style'=>'width:95%;');
   if(!empty($onchange)){
     $s02['onchange'] =$onchange;
   } 
   $s1.=Select2::activeDropDownList($m,$atts,$s01,$s02);
   $s1.=$ln.$form->error($m, $atts, $htmlOptions = array());
   if(!empty($noneshow)) $s1.='</span>';
   $s1.='</td>'.(($dtr[1]==1) ? '</tr>' :'').$ln;
   return $s1;
}



  public static function searchByData($title,$field,$datas,$id='id',$name='name'){
    $s01=Yii::app()->request->getParam($field);
    $s01=(empty($s01)) ?'':$s01;
    $s1='<label style="margin-right:25px;">';
    $s1.='<span>'.$title.'：</span>';
    $s1.='<select name="'.$field.'" id="'.$field.'" >';
    $s1.='<option value="">请选择</option>';
    foreach($datas as $v2){
     $s2=$v2[$id];
     $s1.='<option value="'.$v2[$name].'"'.(($s01==$s2) ?' selected="selected"':'').'>';
     $s1.=$v2[$name].'</option>';
    }
    return $s1.'</select></label>';
  }

//str=name:1:2,其中NAME为知道，1表示跨表格，2是右边 
public function inputSearch($title,$keywords) {
    $ln=$this->ln();
    $s1='<label style="margin-right:10px;">'.$ln;;
    $s1.='<span>'.$title.'：</span>'.$ln;
    $s1.='<input style="width:200px;height=25px;" class="input-text" type="text" name="'.$keywords.'"';
    $s1.=' value="'.Yii::app()->request->getParam($keywords).'">'.$ln;
    $s1.=' </label>'.$ln;
   return  $s1 ;     
}

public function listBox($pkeyword,$titlname,$pfields){
       $ln=$this->ln();
       $s1=BaseCode::model()->listFrom($pkeyword,$titlname,$pfields);
       return '<label style="margin-right:20px;">'.$ln.$s1.$ln.'</label>'.$ln;       
    }

/*
  S利用字符串生产相关命令
  参数：search:查询;save:确认
     <button class="btn btn-blue" onclick="$('#oper').val('search');" type="submit">查询</button>
    <button class="btn btn-blue" onclick="$('#oper').val('save');" type="submit">确认</button>

 */
    public function getSubmit($str) {
      $d=explode(';',$str);
      $ln=$this->ln();
      $s1='';
      foreach($d as $v){
        $d1=explode(':',$v);
        $s1.='<button class="btn btn-blue" onclick="$('."'#oper').val('".$d1[0]."');".'"';
        $s1.=' type="submit">'.$d1[1].'</button>'.$ln;
      }
      return  $s1;     
    }



   public  function dele_char($s1){
     $s1=str_replace(trim(' / '),"",$s1);
     $s1=str_replace(trim(' \ '),"",$s1);
     $s1=str_replace("'","",$s1);
     $s1=str_replace('"',"",$s1);
     $s1=str_replace('(',"",$s1);
     $s1=str_replace(')',"",$s1);
     $s1=str_replace(' ',"",$s1);
     $s1=str_replace(',',"",$s1);
     $s1=str_replace('-',"",$s1);
     $s1=str_replace('=',"",$s1);
     $s1=str_replace('<',"",$s1);
     $s1=str_replace('>',"",$s1);
     $s1=str_replace('*',"",$s1);
     $s1=str_replace('.',"",$s1);
     $s1=str_replace('&',"",$s1);
     $s1=str_replace('@',"",$s1);
     $s1=str_replace('$',"",$s1);
     $s1=str_replace('#',"",$s1);
     $s1=str_replace(trim(' / '),"",$s1);
     $s1=str_replace(trim(' \ '),"",$s1);
     $s1=str_replace('&',"",$s1);
     return $s1;
    }


    function clear_html($content) {
      $content = preg_replace("/<a[^>]*>/i", "", $content);
      $content = preg_replace("/<\/a>/i", "", $content);
      $content = preg_replace("/<div[^>]*>/i", "", $content);
      $content = preg_replace("/<\/div>/i", "", $content);
      $content = preg_replace("/<!--[^>]*-->/i", "", $content); //注释内容
      $content = preg_replace("/style=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/class=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/id=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/lang=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/width=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/height=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/border=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/face=.+?['|\"]/i", '', $content); //去除样式
      $content = preg_replace("/face=.+?['|\"]/", '', $content); //去除样式 只允许小写 正则匹配没有带 i 参数
      return $content;
    }

    
}  //end class

