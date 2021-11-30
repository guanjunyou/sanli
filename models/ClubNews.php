<?php

class ClubNews extends BaseModel {
    public $news_content_temp = '';
    public function tableName() {
        return '{{course}}';
    }

    /**
     * 模型驗證規則
     */
    public function rules() {
        return array(
          array('f_year', 'required', 'message' => '{attribute} 不能為空'),
          array('f_term', 'required', 'message' => '{attribute} 不能為空'),
          array('name', 'required', 'message' => '{attribute} 不能為空'),
          array('content', 'required', 'message' => '{attribute} 不能為空'),
          array('starttime', 'required', 'message' => '{attribute} 不能為空'),
          array('endtime', 'required', 'message' => '{attribute} 不能為空'),
          array('registrationstartdate', 'required', 'message' => '{attribute} 不能為空'),
          array('registrationenddate', 'required', 'message' => '{attribute} 不能為空'),
          array('cost', 'required', 'message' => '{attribute} 不能為空'),
          array('id,name,introduce,content,starttime,endtime,cost,imagesurl,typeid,type,registrationstartdate,registrationenddate,status,duration,f_year,f_term,reasons_for_failure','safe'),

           // array('f_year,f_term,news_title,news_content_temp','safe'),
        );
    }

    /**
     *    array('f_year,f_term,news_code,news_title,news_pic,news_content,club_id,news_introduction,news_date_start,news_date_end,state,reasons_for_failure,
            news_address,latitude,Longitude,
                ','safe'),
     * 模型關聯規則
     */
    public function relations() {
        return array(
           // 'club_list' => array(self::BELONGS_TO, 'ClubList', 'club_id'),
        );
    }

    /**
     * 屬性標簽
     */
    public function attributeLabels() {
        return array(
        'id'=>'ID',
        'name'=>'课程名字',
        'introduce'=>'简要介绍',
        'content'=>'详细介绍',
        'starttime'=>'课程开始时间',
        'endtime'=>'课程结束时间',
        'cost'=>'报名费用',
        'imagesurl'=>'缩略图',
        'typeid'=>'类型id',
        'type'=>'类型',
        'registrationstartdate'=>'报名开始时间',
        'registrationenddate'=>'报名结束时间',
        'status'=>'状态',
        'duration'=>'持续时间',
        'f_year'=>'学年',
        'f_term'=>'学期',
        'reasons_for_failure'=>'驳回说明'
        );
    }

    /**
     * Returns the static model of the specified AR class.
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    protected function afterFind() {
        parent::afterFind();
        $this->news_content_temp = $this->content;
        return true;
    } 

    protected function beforeSave() {
        parent::beforeSave();
         $status=$_POST['submitType'];
         if($status=='shenhe')
         {
            $this->status=1;
         }
         else if($status=='queren')
         {
            
         }
         else
         {
            $this->status=0;
         }
        // 圖文描述處理
        return true;
    }

    public function picLabels() {
        return 'imagesurl';
    }
}
