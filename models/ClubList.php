<?php
//上传图片要改这里
use yii\validatoers;

class ClubList extends BaseModel {

    public function tableName() {
        return '{{club_list}}';
    }

    /**
     * 模型验证规则
     */
    public function rules() {
      
        return array(
      array('club_code,club_name,club_address,apply_name,contact_phone,pic','safe'), 
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
      'id'=>'ID',
      'club_code'=>'机构编码',
      'club_name'=>'机构名称',
      'club_address'=>'详细地址',
      'apply_name'=>'申联系人姓名',
            'contact_phone'=>'联系人电话',
            'pic'=>'缩略图',
 );
}

    /**
     * Returns the static model of the specified AR class.
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
  
  

    public function getCode() {
        return $this->findAll('1=1');
    }

    //缩略图要改这里下面
    public function picLabels() {
        return 'pic';//缩略图要加这一个函数
    }
}
