<?php

class UserController extends BaseController
{

    protected $model = '';

    public function init()
    {
        $this->model = substr(__CLASS__, 0, -10);
        parent::init();
        //dump(Yii::app()->request->isPostRequest);
    }


    public function actionWxLogin() //获取openid，自定义登录态
    {
        $data=array();
        $json=$_REQUEST; //小程序请求
        $appid = Basefun::model()->get_appid();  //appId
        $secret = Basefun::model()->get_secret(); //appSecret 验证你是服务器
        $code = $json["code"];
        $url = 'https://api.weixin.qq.com/sns/jscode2session?appid='.$appid.'&secret='.$secret.'&js_code='.$code.'&grant_type=authorization_code';
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_TIMEOUT, 500);
// 为保证第三方服务器与微信服务器之间数据传输的安全性，所有微信接口采用https方式调用，必须使用下面2行代码打开ssl安全校验。
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($curl, CURLOPT_URL, $url);
        $res = curl_exec($curl);
        curl_close($curl);
        $json_obj = json_decode($res, true);
        //生成并返回token
        Yii::$enableIncludePath = false;
        Yii::import('application.extensions.JWT', 1);
        $payload=array(
            'openid'=>$json_obj["openid"],
            'session_key'=>$json_obj["session_key"]);
        $jwt=new Jwt;
        $token=$jwt->getToken($payload);  //加密,形成token
        $w1="wx_openid='".$json_obj["openid"]."'";  //
        $data['isSaveSuccess']=$this->addUserInfo($json["encryptedData"],$json["iv"],$json_obj['session_key']);
        //返回token用于用户识别

        $data['user']=User::model()->get_userinfo($w1);//用户基本信息名称之类
        $userid=$data['user']['userId'];
       // $address=UserAddress::model()->get_user_address($userid);
       // $data['address']=$address;
        $rs=array('userId'=>$userid,'data'=>$data,'code'=>'200','msg'=>'调用登录成功',);
        $rs['token'] =$token;//token
        echo CJSON::encode($rs);
    }



 public function addUserInfo($encryptedData, $iv, $sessionKey){
        $data=$this->decryptData($encryptedData, $iv, $sessionKey);
        $s='login';
        $rs='false';
        if($data){
            //用电话登录的话可以改成用电话查找
            $user=User::model()->find("wx_openid='".$data['openId']."'");
            if(empty($user)){
                $user_info=new User();
                $user_info->isNewRecord=true;
                $user_info->wx_url=$data['avatarUrl'];
                $user_info->nickName=$data['nickName'];
                $user_info->userSex=$data['gender'];
                $user_info->wx_openid=$data['openId'];
                $user_info->createTime=date('Y-m-d H:i:s',$data['watermark']['timestamp']);
                $user_info->userFrom=2;
                $user_info->userStatus=1;
                $s=$user_info->save();
                $rs=array('success'=>$s,'code'=>0,'msg'=>"注册已经成功!");
            }
            else{
                $user->wx_url=$data['avatarUrl'];
                $user->nickName=$data['nickName'];
                $user->userSex=$data['gender'];
                $user->province=$data['province'];
                $user->city=$data['city'];
                $user->country=$data['country'];
                $user->lastTime=date('Y-m-d H:i:s',$data['watermark']['timestamp']);
                $s=$user->save();
                $rs=array('success'=>$s,'code'=>0,'msg'=>"登录已经成功!");
            }
        }
        return $rs;
    }





    //获取用户信息：通过这三个参数将用户信息译码出来
    protected function decryptData($encryptedData, $iv, $sessionKey)
    {
        $appid = Basefun::model()->get_appid();
        if (strlen($sessionKey) != 24 || strlen($iv) != 24) {
            return false;
        }
        $aesKey = base64_decode($sessionKey);
        $aesIV = base64_decode($iv);
        $aesCipher = base64_decode($encryptedData);
        $result = openssl_decrypt($aesCipher, "AES-128-CBC", $aesKey, 1, $aesIV);
        $data = json_decode($result, true);

        if(empty($data) || $data['watermark']['appid'] != $appid) {
            return false;
        }
        return $data;
    }

    public function actionrefreshUserInfo()
    {
        $data=array();
        $json=$_REQUEST;
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        $msg="not_found";
        if(isset($user))
        {
            $data['articleCollectionNum']=$user->collection_num;
            $data['fansNum']=$user->fans_num;
            $data['phone']=$user->phone;
            $data['signature']=$user->signature;
            $msg="success";
        }
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }

   public function actionconfigUserInfo()
    {
        $data=array();
        $json=$_REQUEST;
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        $msg="wrong";
        if(isset($user))
        {
            $user->phone=$json['phone'];
            $user->signature=$json['signature'];
            $s=$user->save();
            if($s){$msg='success';}
        }
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }

    public function actiongetFans()
    {
        $data=array();
        $json=$_REQUEST;
        $msg="not_found";
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        $subscribed_user_id=$user->userid;
        $subscribe_user=Subscribe::model()->findAll('subscribed_id='.$subscribed_user_id);
        $subscribe_user_id=array();
        $subscribe_open_id=array();
        foreach ($subscribe_user as $v) {
           array_push($subscribe_user_id,$v->subscribe_id);
        }
        foreach($subscribe_user_id as $v)
        {
            array_push($subscribe_open_id,User::model()->find('userid='.$v)->wx_openid);
        }
        //$subscribe_open_id=User::model()->find('userid='.$subscribe_user_id);
        if(isset($user))
        {
            $data['fans_open_id']=$subscribe_open_id;
            $msg="success";
        }
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }

    public function actiongetArticleCollection()
    {
        $data=array();
        $json=$_REQUEST;
        $msg="not_found";
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        $article=array();
        if(isset($user))
        {
            foreach ($user->collect as $v) {
                array_push($article,$v->article->title);
            }
        }
        $data['data']=$article;
        //$data['article_title']=$user->collect->article->title;
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }
    
    public function actiondeleteArticleCollection()
    {

        $data=array();
        $json=$_REQUEST;
        $msg="not_found";
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        $user_id=$user->userid;
        $count=collect::model()->deleteAll('article_id='.$json['article_id'],'user_id='.$user_id);

        if(isset($user))
      {  if ($count > 0) {
            $msg='delete_success';
        } else {
            $msg='delete_false';
        }
    }
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }


   public function actiongetArticleList()
    {
        $data=array();
        $json=$_REQUEST;
        $msg="not_found";
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        $article=array();
        if(isset($user))
        {
            foreach ($user->article as $v) {
                array_push($article,$v->title);
            }
        }
        $data['data']=$article;
        //$data['article_title']=$user->collect->article->title;
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }

public function actionaddCollectionAuthor()
{
        $data=array();
        $json=$_REQUEST;
        $msg="not_find";
        $subscribe_id=User::model()->find("wx_openid='".$json['open_id']."'")->userid;
        $subscribed_id=User::model()->find("wx_openid='".$json['author_id']."'")->userid;
        $count=subscribe::model()->find('subscribe_id='.$subscribe_id,'subscribed_id='.$subscribed_id);
        if(isset($count))
        {
            $msg="请勿重复关注";
        }
        else
        {
            $model=new subscribe('create');
            $model->subscribe_id=$subscribe_id;
            $model->subscribed_id=$subscribed_id;
            $model->save();
            $msg="success";
        }
        $data['msg']=$msg;
        echo CJSON::encode($data);
}


   public function actiondeleteCollectionAuthor()
    {

        $data=array();
        $json=$_REQUEST;
        $msg="not_found";
        $subscribe_id=User::model()->find("wx_openid='".$json['open_id']."'")->userid;
        $subscribed_id=User::model()->find("wx_openid='".$json['author_id']."'")->userid;
        $count=subscribe::model()->deleteAll('subscribe_id='.$subscribe_id,'subscribed_id='.$subscribed_id);
        
        
            if ($count > 0) {
            $msg='delete_success';
             } 
                else {
            $msg='delete_false';
        
        }
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }

    public function actiongetConcernedUser()
    {
        $data=array();
        $json=$_REQUEST;
        $msg="not_found";
        $fans_open_id=array();
        $user=User::model()->find("wx_openid='".$json['open_id']."'");
        if(isset($user))
        {
            $subscribe=$user->subscribe;
            foreach ($subscribe as $v) {
                    array_push($fans_open_id,$v->subscribed_user->wx_openid);
               // $data['data']=$v;
            }
            $msg='success';
        }
         $data['fans_open_id']=$fans_open_id;
        $data['msg']=$msg;
        echo CJSON::encode($data);
    }





    /*曾老师保留部份，---结束*/


    ///列表搜索
    public function actionIndex($school = '', $province = '', $city = '', $area = '')
    {
        set_cookie('_currentUrl_', Yii::app()->request->url);
        $data = array();
        $modelName = $this->model;
        $model = $modelName::model();
        $criteria = new CDbCriteria;
        $criteria->order = 't.school AND t.id';
        $criteria->condition = get_like($criteria->condition, 'school', $school, '');
        // $criteria->condition=get_like($criteria->condition,'location',$location,'');
        // if($location!='')
        //     $criteria->addCondition('location='.$location);
        if ($province != '') {
            $criteria->addCondition('province=' . $province);
            $data['city'] = Location::model()->findAll('pid=' . $province);

            if ($city != '') {
                $criteria->addCondition('city=' . $city);
                $data['area'] = Location::model()->findAll('pid=' . $city);
            }
            if ($area != '')
                $criteria->addCondition('area=' . $area);
            $criteria->select = 't.*,s.province province,s.city city,s.area area';
            $criteria->join = 'LEFT JOIN school_list s ON s.school_name=t.school';
        }

        $data['province'] = Location::model()->findAll('pid=0');
        parent::_list($model, $criteria, 'index', $data);
    }
    // $c = new CDbCriteria();

    public function actionTest($grade)
    {
        // set_cookie('_currentUrl_', Yii::app()->request->url);
        // $modelName = $this->model;
        // $model = $modelName::model();
        // // $criteria = new CDbCriteria;
        // // $criteria->order = 'school AND id';
        // // $criteria->condition='1';
        // // if ($school!='') {
        // //   $criteria->condition="(school='".$school."')";}

        $criteria = new CDbCriteria();
        // $c->select = '*';
        // $c->join = 'LEFT JOIN school_list ON school_list.school_name=school';
        // // $c->condition = 'outsource.idc_id IN(' . locationimplode(',', $idc_ids) . ')';
        $data = array();

        // $data['list'] =$model->findAll($c);
        // $data['o'] =$data['list']['0']['location'];

        // $criteria->select = 't.*,u.num';
        // $criteria->join = 'LEFT JOIN (select school,count(id) num from user where grade='.$grade.' GROUP BY school ) u on t.school_name=u.school';

        // $criteria->with=array(

        //     'stu'=>array('select'=>'id'),

        //     'num',

        // );
        // $criteria->select = 't.id,count(t.id)';

        // $SchoolList=SchoolList::model()->findAll($criteria); 

        // $data['SchoolList']=$SchoolList;

        $data['User'] = Yii::app()->db->createCommand('SELECT school_name,num from school_list s left JOIN (select school,count(id) num from user where grade=' . $grade . ' GROUP BY school ) u on s.school_name=u.school')->queryAll();
        // $data['o']=$data['User'][0]['num'];
        // $num=array();
        // foreach($SchoolList as $a)
        // {
        //     $num[$a->school_name]=$a->num;
        // }
        // $data['num']=$num;
        echo CJSON::encode($data);
        //    echo $array->province;
        //    echo $array->city;
        //    echo $array->area;
        // parent::_list($model, $c, 'index', $data);
    }
}
