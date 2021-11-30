<?php

class SignList extends BaseModel {


    public $location ='';
    public function tableName() {
        return '{{registration}}';
    }

    /**
     * 模型验证规则
     */
    public function rules() {
        return array(
            array('id,userid,courseid,registrationtime,status', 'safe'),
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
        'usesid'=>'用户id',
        'courseid'=>'课程id',
        'registrationtime'=>'报名时间',
        'status'=>'状态',
        );
    }

    /**
     * Returns the static model of the specified AR class.
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    protected function beforeSave() {
        parent::beforeSave();
        return true;
    }
}
