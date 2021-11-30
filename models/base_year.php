<?php

class base_year extends BaseModel {
    public $chose_name = '';

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    public function tableName() {
        return '{{base_year}}';
    }
    /**
     * 模型验证规则
     */
    public function rules() {
        return array(
           array('F_CODE', 'required', 'message' => '{attribute} 不能为空'),
           array('F_NAME', 'required', 'message' => '{attribute} 不能为空'),
           array('F_value', 'safe'),
        );
    }

    /**
     * 模型关联规则
     */
    public function relations() {
        return array(
        //'F_CODE' => array(self::HAS_MANY, 'MallBrandProject', 'brand_id'),
        //'qmdd_administrators' => array(self::BELONGS_TO, 'QmddAdministrators', 'f_user_id'),
            
        );
    }

    /**
     * 属性标签
     */
    public function attributeLabels() {
        return array(
           'f_id' => 'ID',
  'F_CODE'=> '编码',
  'F_NAME'=> '名称',
  'F_value'=> '值',

        );
    }

    /**
     * Returns the static model of the specified AR class.
     */
 

    public function now() {//获取当前时间
        $time=getdate();
        if($time['mon']>=9)
        {
            return $this->find("F_value=".$time['year'])->F_NAME;
            //找到数据库里面当前
        }
        else
        {
            return $this->find("F_value=".($time['year']-1))->F_NAME;
        }
    } 

    protected function beforeSave() {
        parent::beforeSave();
        return true;
    }

    public function downSelect($form,$m,$atts,$onchange='',$noneshow=''){
     $data=$this->findAll('1 order by F_CODE');
     return BaseLib::model()->selectByData($form,$m,$atts,$data,'F_NAME',$onchange,$noneshow);
    }

}
