<?php

class Userinfo extends BaseModel {


    public $location ='';
    public function tableName() {
        return '{{userinfo}}';
    }

    /**
     * 模型验证规则
     */
    public function rules() {
        return array(
            array('openid,unionid,header,name,education,nikename,status,phone,schoolname,grade,country,province,city,gender,registerdate', 'safe'),
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
        'openid'=>'微信openid',
        'unionid'=>'用户微信unionid',
        'header'=>'头像',
        'name'=>'名称',
        'education'=>'在读学历',
        'nikename'=>'名称',
        'status'=>'状态',
        'phone'=>'手机号',
        'schoolname'=>'学校名称',
        'grade'=>'年级',
        'country'=>'国家',
        'province'=>'省',
        'city'=>'市',
        'gender'=>'性别',
        'registerdate'=>'注册时间',
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

    public function picLabels() {
        return 'header';
    }
}
