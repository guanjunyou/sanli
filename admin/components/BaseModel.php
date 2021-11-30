<?php

class BaseModel extends CActiveRecord {

    public $select_id='';
    public $select_code='';
    public $select_title='';
    public $select_item1='';
    public $select_item2='';
    public $select_item3='';
    
    protected function afterSave() {
        parent::afterSave();
    }
    public  function className() {
        return (__CLASS__);
    }
    

   protected function abeforeSave() {
        parent::beforeSave();
        if(!($this->getTableName()=="table_update")){
           if(!$this->getIsNewRecord()) $this->update_log($tname);
        } 
        return true;
    }

   protected function getTableName() {
        $tname= str_replace('{','',$this->tableName());
        $tname= str_replace('}','',$tname);
        return $tname;
    }

    protected function afterDelete() {
        parent::afterDelete();
    }

    protected function safeField() {
       $dm=$this->attributeLabels();
       $s1='';$b1='';
       foreach($dm as $k=>$v)
       {
         $s1.=$b1.$k;
         $b1=',';
       }
       return $s1;
    }

  public function del_daohao($pstr,$dchar=',')
  {
     $pstr=str_replace(' ','', $pstr);
     $pstr=str_replace($dchar.$dchar,$dchar,$pstr);
     return $pstr;
  }



         //自动图片加上路径
    protected function afterFind(){
      parent::afterFind();
/*put_msg('line=basemode 60a  ');*/
      $this->toAddPath();
      $this->changeJsonData(1);
   //   $this->changeHtml(1);
    }

//保存图片时候 删除图片前面的路径
    protected function beforeSave(){
        parent::beforeSave();
       if(!($this->getTableName()=="test_err")) $this-> movePath();
        return true;
    }

//保存的图片取消根路径 op=?,0 删除，1 添加
    protected function changePath($op){
       put_msg('line=basemode 75a  ');
        $ds=$this->getPicField();
       //put_msg($ds);
       // $s1=$ds['path'];//存放图片路径名字
       // $afieldstmp=$ds['fields'];//要处理的图片名称
       $s2='';
        foreach($ds as $v1){ //加上路径名称
           $s2=$this->{$v1};
           $this->{$v1}=($op==0) ? delUploadPath($s2,$s1) : addUploadPath($s2);
        }
        return true;
    }
//保存的图片取消根路径 op=?,0 删除，1 添加
    protected function changeHtml($op){
        $ds=$this->getHtmlField();
        foreach($ds as $v1){ //加上路径名称
           if(isset($this->{$v1})){
               $s2=$this->{$v1};
               if($op==1){
                 $s2=html_entity_decode($s2);//转换成数组
               }
               $this->{$v1}=$s2;
           }
        }
        return true;
  
    }

        //保存图片时候 删除图片前面的路径
    protected function toAddPath(){
        
        $ds=$this->getPicField();
        /*put_msg(108);
        put_msg($ds);*/
        foreach($ds as $v1){ //加上路径名称
          $this->{$v1}=BasePath::model()->addPath($this->{$v1});
        /*put_msg($this->{$v1}); */       
        }
    }

    //保存图片时候 删除图片前面的路径
    //
   
    protected function movePath(){
        //put_msg('line=basemode 117a  ');
        $ds=$this->getPicField();
        foreach($ds as $v1){ //加上路径名称
          $this->{$v1}=BasePath::model()->reMovePath($this->{$v1});
        }
    }


//改变数据格式 op=?,0 JONS 字符串，1 字符转JSON添加
    protected function changeJsonData($op=0){
        $ds=$this->getJsonField();
       // put_msg($this);
       $i=0;
        foreach($ds as $v1){ //加上路径名称
          $i=$i+1;
          $s2=$this->{$v1};
           if(isset($this->{$v1})){
               $s2=$this->{$v1};
               if($op==1){
                 $s2=$this->mb_unserializea($s2);//转换成数组
               }
               $this->{$v1}=$s2;
           }
        }
        return true;
    }

    protected function getPicField() {
      $rs=array();

      if(method_exists($this,'picLabels')){
        $afieldstr=$this->picLabels();

        $rs=explode(',',$afieldstr);
      }
      return $rs;
    } 

  protected function getHtmlField() {
      $rs=array();
      if(method_exists($this,'htmlLabels')){
        $afieldstr=$this->picLabels();
        $rs=explode(',',$afieldstr);
      }
      return $rs;
    } 


    protected function getJsonField() {
      $rs=array();
      if(method_exists($this,'jsonLabels')){
        $rs=explode(',',$this->jsonLabels());
      }
      return $rs;
    }


function mb_unserializea($str) {
  if(!is_array($str))
  if  ((strpos($str,"s:")>0)||empty($str)){
       $data=$str;
       $str=@unserialize($str);
        if (!$str) {
            $str =$this->mb_unserializeb($data);
        }
    }
   return $str;
}

function mb_unserializebk($serial_str) {
    $out = preg_replace_callback('|s\:(\d+)\:"(.*?)"|',
        function ($matches){
            return "s:".strlen($matches[2]).":\"$matches[2]\"";
        },
        $serial_str);
    return unserialize($out);
}
 

function mb_unserializeb($serial_str) { 
    $serial_str = preg_replace_callback('/s:(\d+):"([\s\S]*?)";/', function($matches) {
            return 's:'.strlen($matches[2]).':"'.$matches[2].'";';
      }, $serial_str);
    return unserialize($serial_str);  
}



   protected function update_log($tname) {
    return 0;
    $dm=$this->attributeLabels();
    $tmp0=sql_findall('SHOW FULL COLUMNS FROM '.$tname);
    $key="";
    foreach($tmp0 as $v)
    {
        if($v['Key']=='PRI'){
            $key=$v['Field'];
            break;
        }
    }
    $val=$this->{$key};
    $tmp2=$this->find($key."='".$val."'");
    $data=array();
    foreach($tmp0 as $v)
    {
        $k=$v['Field'];
        if(isset($this->{$k})){
            $s1=$tmp2->{$k};
            $s2=$this->{$k};
            if(!($s1==$s2)){
                $data[$k]=array($s1,$s2);
            }
        }
    }
 //   save_change($tname,0,$data,$key,$val);//0修改 1 删除
  //  save_change_table($tname);
}

//扩充 对象转换成数组
 protected function objtoArray($afieldstr) {
        $arr=array();
        $afields=array();
        $r=0;
        $val=$this->attributes;
        $afieldstmp=explode(',',$afieldstr);
        foreach($afieldstmp as $v1){
          $a=explode(':',$v1);
          $afields[$a[0]]=$a[0];
          $aval[$a[0]]='<null>';
          if(isset($a[1])) $afields[$a[0]] = $a[1];//有别名
           $arr[$a[0]]='';                 
          if(isset($a[2])) $arr[$a[0]]= $a[2];//默认值
          if(isset($val[$a[0]])) $arr[$a[0]]= $val[$a[0]];//表的值
        }
        return $arr;
    }

   //扩充 对象转换成数组
   protected function objAddtoArray(&$v,$afieldstr,$tmp) {
        $arr=$this->objtoArray($afieldstr);
        $afieldstmp=explode(',',$afieldstr);
        foreach($afieldstmp as $v1){
          $v[$v1]='';
        }
        if(!empty($tmp)){
          foreach($afieldstmp as $v1){
            if(isset($tmp->{$v1})){
              
            };
          }
        }
    }
   //扩充 对象转换成数组
   public function readValue($w1,$fieldstr) {
        $tmp=$this->find($w1);
        $r='';
        if($tmp)
        if(isset($tmp->{$fieldstr})){
            $r=$tmp->{$fieldstr};
        };
        return $r;
       
    }

  public  function gridHead($fs='',$wd='') {
    $s1="";
    $dm=$this->getFields($fs);
    $wds=BaseLib::model()->tdWidth(count($dm),$wd);
    $i=0;
    foreach($dm as $k)
    {
      $s2=$k;
      if($s2<'zzz') $s2=$this->getAttributeLabel($k);
      $s1.='<th '.$wds[$i].' align="center" >'.$s2.'</th>';
      $i++;
    }
    return $s1;
   }



  public  function gridRow($fs='',$data=array(),$rows='') {
    $s1="";
    if(!empty($fs)){
        $dm=$this->getFields($fs);
        foreach($dm as $k)
        { 
            $s1.=$this->toTdstr($this->{$k},$rows);
        }
    }
    if(!empty($data)){
        foreach($data as $k=>$s2)
        { 
          $s1.=$this->toTdstr($s2);
        }
    }   
    return $s1;
   }

 public  function toTdstr($s2,$rows='') {
     if(indexof($s2,'uploads/temp')>=0){
         $s2='<img src="'.$s2.'" height="60px" width="60px">';
       } 
       return '<td '.$rows.'>'.$s2.'</td>';
   }

  public  function getFields($r) {
    if(empty($r))  $r=$this->gridLabels();
    return explode(',',$r);
   }

  public  function getcount($w1='1'){
    $tmp=$this->findAll($w1);
    return count($tmp);
   }
/*
$datalist,$idname,$showname,$selectname,$pvalue='0'
选择集，值字段，显示字段，选择名，默认值
echo $form->checkBoxList($model, 'admin_level', 
                  Chtml::listData(Role::model()->getLevel($model->lang_type,get_session('club_id')), 'f_id', 'f_rname'),
                  $htmlOptions = array('separator' => '', 'class' => 'input-check', 'template' => '<span class="check">{input}{label}</span>')); ?>

                echo $form->radioButtonList($model, 'customer_service',
                Chtml::listData(array(array('id'=>'0','name'=>'否'),array('id'=>'1','name'=>'是')), 'id', 'name'), 
                $htmlOptions = array('separator' => '', 'class' => 'input-check', 'template' => '<span class="check">{input}{label}</span>')); 

                  <?php   echo $form->dropDownList($model, 'company_type_id', Chtml::listData(BaseCode::model()->getCode(1403), 'f_id', 'F_NAME'), array('prompt' => '请选择', "disabled" => "disabled"));
*/
    public static function downList($datalist,$idname,$showname,$selectname,$pvalue='0') {
      $html='<select name="'.$selectname.'">';
      $html.='<option value="">請選擇</option>';
      foreach($datalist as $v){
       $html.='<option value="'.$v[$idname].'"'.(($v[$idname]==$pvalue) ? ' selected >' :'>');
       $html.=$v[$showname].'</option>';
       }
       $html.='</select>';
       return $html;
    }


}
