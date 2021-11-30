<?php

use yii\validatoers;

class User extends BaseModel {

    public function tableName() {
        return '{{user}}';
    }

    /**
     * 模型验证规则
     */
    public function rules() {
      
        return array(
			array('name,account,password,school','safe'), 
		);
    }	


    /**
     * 模型关联规则
     */
    public function relations() {
        return array(
            'location'=>array(self::BELONGS_TO, 'schoolList', ['school'=>'school_name'],'select'=>'province,city,area'),
            'collect'=>array(self::HAS_MANY, 'collect', ['user_id'=>'userid']),
            'subscribe'=>array(self::HAS_MANY, 'subscribe', ['subscribe_id'=>'userid']),
            'subscribed'=>array(self::HAS_MANY, 'subscribe', ['subscribed_id'=>'userid']),
		);
    }

    /**
     * 属性标签
     */
    public function attributeLabels() {
        return array(
			'id'=>'序号',
			'name'=>'姓名',
			'account'=>'账号',
			'password'=>'密码',
            'school'=>'所属学校',
            'grade'=>'年级',
            'class'=>'班级',
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
    function get_userinfo($w1){
        $tmp =$this->find($w1);
        $check = user::model()->find("userId!=".$tmp->userId." and PHONE ='".$tmp->PHONE."'");//查找除了当前账号，电话又相同的
        $userId=$tmp->userId;
        if(!empty($check)){
            $userId=$check->userId;  //如果有相同手机的账号，返回前一个用户记录的userId，防止包裹
        }
        $data=array('userId'=>$userId,'wx_openid'=>$tmp->wx_openid,'loginName'=>$tmp->loginName,'userSex'=>$tmp->userSex);
        $data['userName']='';//昵称',
        $data['name']='';//'name'=> '真名',
        $data['isHavingPhone']=empty($tmp->PHONE)?'0':'1';
        $data['admin']=$tmp->F_ROLENAME=='系统管理员'?'1':'';//管理员权限
        $userItem=array();
//        if($tmp)
//            $userItem=Orders::model()->get_center_info($tmp->userId);
//        if($tmp){
//            $data=$tmp->attributes;
//            $data['UserIntegral']=$tmp->userMoney*100;//余额,小程序除100
//            $data['UserMBean']=$tmp->seabean;//深海豆
//
//        }
        return array_merge($data,$userItem);
    }




}
