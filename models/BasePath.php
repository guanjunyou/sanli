<?php

class BasePath extends BaseModel {

    public function tableName() {
        return '{{base_path}}';
    }
 //BasePath::model()->downPath();
    /**
     * 模型验证规则
     */
    public function rules() {
        return array(
                //array('', 'safe'),
        );
    }

    /**
     * 模型关联规则
     */
    public function relations() {
        return array(
        );
    }

    /**
     * 属性标签
     */
    public function attributeLabels() {
        return array(
        );
    }

    /**
     * Returns the static model of the specified AR class.
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    protected function beforeSave() {
        return true;
    }

public function getPath($f_id) {
        return  $this->getWwwPath();

        //    return $this->find('f_id=' . $f_id);
    }
//http://127.0.0.1/hkam/files/html/T12.files/image001.png
//http://127.0.0.1/hkam/hsyii/files/html/T12.files/image001.png
    public function getLocalPath() {
        return str_replace('/', trim(' \ '), "F:/wamp64/www/sanli/uploads/temp/");
    }

    public function diskPath() {
        return  $this->getLocalPath();
    }
    public function downPath() {
        return  $this->getLocalPath();
    }
    public function getWwwPath() {
        return  $this->getParentPath()."";

    }

   public function getParentPath() {
        return  "http://127.0.0.1/sanli/uploads/temp/";

    }

  public function toNewPage($paction) {
        return  $this->getParentPath().'index?r='.$paction;
   }
   
   public function reMovePath($str1){
       //put_msg($str1);
       //put_msg($this->getWwwPath());
       
       return  str_replace($this->getWwwPath(),"",$str1);
  }
 public function local_pic($str1){
       return  str_replace($this->getWwwPath(),$this->getLocalPath(),$str1);
  }

  public function addPath($str1){
    if($str1)
     if(!substr_count($str1,'http'))
         $str1=str_replace('files/html/',$this->getWwwPath().'files/html/',$str1);
        $str1=$this->getWwwPath().$str1;       
       return  $str1;
  }

}
