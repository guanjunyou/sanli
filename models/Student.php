<?php

class Student extends BaseModel {


    public $location ='';
    public function tableName() {
        return '{{student}}';
    }

    /**
     * 模型验证规则
     */
    public function rules() {
        return array(
            array('STSNUM,STYEAR
  STLEVEL,
  STCLASS,
  SCSNUM,
  STMNUM,
  STNAME,
  STENAME,
  STIDT,
  STIDN,
  STIDD,
  STSEX,
  STBORND,
  STBORNDC,
  STBORNP,
  STN,STS, club_id,f_stpass,
  organization', 'safe'),
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
             'ID'=>'內部關聯使用',
               'STSNUM' => '學號',
  'styear' => '學年',
  'stterm' => '學段',
  'STLEVEL' => '年級',
  'STCLASS' => '班別',
  'SCSNUM' => '座號',
  'STMNUM' => '教青局學籍號',
  'STNAME' => '中文姓名',
  'STENAME' => '英文姓名',
  'STIDT' => '證件類型名稱',
  'STIDN' => '身份證件編號',
  'STIDD' => '發證日期',
  'STSEX' => '性別',
  'STBORND' => '出生日期',
  'STBORNDC' => '出生日期',
  'STBORNP' => '國籍',
  'STN' => '出生地',
  'STS' => '籍貫',
  'club_id' => '機構',
  'organization' => '機構',
  'STADDR' => '家庭地址',
  'STEADDR' => '家庭地址英文名稱',
  'STPHONE' => '通訊電話',
  'STMOBILE' => '學生聯系電話手機號',
  'STMAIL' => '郵箱地址',
  'STFATHER' => '父親姓名',
  'STFWORK' => '父親工作單位',
  'STFWADDR' => '工作地址',
  'STFWP' => '',
  'STMOTHER' => '母親姓名',
  'STMWORK' => '母親工作單位',
  'STMWADDR' => '工作地址',
  'STMWP' => '工作機構',
  'STTAKEC' => '監護人姓名',
  'STTWORK' => '工作單位',
  'STTWADDR' => '工作地址',
  'f_stpass' => '登錄密碼',
  'f_stmno' => '考評密碼',
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
        
        if ($this->isNewRecord) {
            
          //  $this->REGTIME = date('Y-m-d H:i:s');
        }
        
        //$this->uDate = date('Y-m-d H:i:s');  

        return true;
    }
      public  function get_chose_name($stsnum) 
    {
        $criteria=new CDbCriteria;
        $criteria->select = 't.*,s.username';
        $criteria->condition='t.st'.$stsnum;
       // $criteria->params=array(':user_id'=>$stsnum);
        $criteria->order = 't.id desc';
        $criteria->join = "LEFT JOIN user AS s ON t.user_id=s.id";
        $this->findAll($criteria);
    }
}
