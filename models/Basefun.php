<?php
class Basefun extends BaseModel {
  // public $app_appid ='wx775e4d708b9cbe29';//深海
  // public $app_secret='c05e533273ef7bc864fc89bc51e663b8';
 

    public function tableName() {

        return '{{ws_areas}}';
    }
    /**
     * Returns the static model of the specified AR class.
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
   
    /**
     * 模型验证规则
     */
    public function rules() {
      return array();
    }

    /**
     * 模型关联规则
     */
    public function relations() {
        return array();
     }

    /**
     * 属性标签
     */
    public function attributeLabels() {
       return array(
        'areaId' =>'id',
        'areaName' =>'名称',
         );
      }

    public  function return_ok($pcode=0){  
         return $this->test_error($pcode);
    }


    public  function test_error($err){  
         return $this->check_error($err>-1,"0","操作成功","2","操作失败");
        }

    public function check_error($ex,$err0,$msg0,$err1="0",$msg1="",$aname="",$value=""){
         $data= ($ex) ? $this->get_error($err0,$msg0) : $this->get_error($err1,$msg1) ;
        if (!empty($aname))  $data[$aname]=$value;
        return $data;
    }

    function get_error($error,$msg){
        return array('error' =>$error,'msg'=>$msg);
    }
    function set_error(&$data,$error,$msg,$exit=0){//不能直接使用get_error($error,$msg)方法，否则$
        if($data==null){
            $data=array();
        }        
        $data['error'] =$error;
        $data['msg'] =  $msg;
        if($exit==1) $this->exit_json($data);
      }

    function exit_error($error,$msg,$data=null){//不能直接使用get_error($error,$msg)方法，否则$
        if($data==null){
            $data=array();
        }        
        $data['error'] =$error;
        $data['msg'] =  $msg;
        $this->exit_data($data);
      }
    
    function exit_data($data){//不能直接使用get_error($error,$msg)方法，否则$
        $this->exit_json($data);
      }


    function set_error_tow(&$data,$ex,$err0,$msg0,$err1,$msg1,$exit=0){
       $ex =($ex) ? $this->set_error($data,$err0,$msg0,$exit) : $this->set_error($data,$err1,$msg1,$exit);
     }


    function exit_jsonb($data){
        $data['stime']=time();
        ob_clean();
        exit(json_encode($data,JSON_UNESCAPED_SLASHES));
    }


        
    function resultAuto($ret) {
        if (empty( $ret ))
            return $this->result( 1, '数据异常' );
        else
            return $this->result( 0, $ret );
    }
    /**
     * 组装返回array('error','res')
     */
    function result($err, $ret) {
        return array ('error' => $err,'res' => $ret );
    }
    /**
     * 检查数据是否在有效范围内
     */
    function checkNum($num, $min, $max) {
        $n = intval( $num );
        return $min <= $n && $n <= $max;
    }
    /**
     * 检查键值对，
     * @param $exit=0 存在空值返回false; =1 exit(json_encode(array('error'=>2,'msg'=>'缺少参数')));
     */
    function checkArray($array, $keys,$exit=0) {
        $keyArr = explode( ',', $keys );
        foreach ( $keyArr as $k => $v ) {
            if ($this->isEmpty( $array[$v] )){
                if($exit){
                    global $p_gf_user_login_history;
                    $p_gf_user_login_history->exit_json(array('error'=>2,'msg'=>'缺少关键参数','keyword'=>$v));
                }else{
                    return false;
                }
            }
        }
        return true;
    }
    /**
     * 参数过滤匹配
     */
    function fliterParam($array, $def) {
        $ret = array ();
        foreach ( $def as $k => $v )
            if (!isset($array[$k]) || $this->isEmpty( $array[$k] ))
                $ret[$k] = $def[$k];
            else
                $ret[$k] = $array[$k];
        return $ret;
    }
    /**
     * 返回数据交集
     */
    function params($arr, $keys) {
        return parama( $arr, explode( ',', $keys ) );
    }
    /**
     * 返回数据交集
     */
    function parama($arr, $keys) {
        $keycheck;
        foreach ( $keys as $k => $v ) {
            $keycheck[trim( $v )] = $k;
        }
        return array_intersect_key( $arr, $keycheck );
    }
    /**
     * 值是否为空
     */
    function isEmpty($p) {
        if (isset( $p ))
            return trim( $p ) == '';
        return true;
    }
    

    

      //将 xml数据转换为数组格式。
    function xml_to_array($xml){
      $reg = "/<(\w+)[^>]*>([\\x00-\\xFF]*)<\\/\\1>/";
      if(preg_match_all($reg, $xml, $matches)){
        $count = count($matches[0]);
        for($i = 0; $i < $count; $i++){
        $subxml= $matches[2][$i];
        $key = $matches[1][$i];
          if(preg_match( $reg, $subxml )){
            $arr[$key] = $this->xml_to_array( $subxml );
          }else{
            $arr[$key] = $subxml;
          }
        }
      }
      return $arr;
    }

//app_appid: 'wx775e4d708b9cbe29',//深海
//app_secret : 'c05e533273ef7bc864fc89bc51e663b8',
 
public static function get_appid() {
    return 'wx566c15824fd2564b';
  }
public static function get_secret() {
    return 'c32b9f18e8be0e5293c388521b9341ec';//$this->app_secret;
  }
     
public static function Get3rdsession($len)
{
      $s1 ='0123456789abcdefghijklmnopqrstuvwxyz';
      $s1.='!@#$%^&*()ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      $s2='';
      for($i=0;$i<100;$i++){
        $i1=rand(0,70);
        $s2.=substr($s1,$i1,1);
      }
        // convert from binary to string
        $result = base64_encode($s2);
        // remove none url chars
        $result = strtr($result, '+/', '-_');
         return substr($result, 0, $len);
 }


  function exit_json($data){
//    exit(json_encode($data,JSON_UNESCAPED_SLASHES));
    if($data['error']!=0){
      global $s_logger;
      $s_logger->write_to_file($_POST['visit_id']." -v ".json_encode($_REQUEST,JSON_UNESCAPED_SLASHES)." exit=".json_encode($data,JSON_UNESCAPED_SLASHES));
    }
    if(!empty($_POST['visit_id'])){
          global $p_aes_encode_class,$p_gf_user_login_history;
        $key=$p_gf_user_login_history->getLoginKey($_POST['visit_id']);
        if(!empty($_POST['enparams'])){
          $sign_data=Aescode::model()->aesEncrypt(json_encode($data,JSON_UNESCAPED_SLASHES),$key);
          ob_clean();
          exit(json_encode(array('error'=>$data['error'],'endata'=>$sign_data),JSON_UNESCAPED_SLASHES));
        }elseif(isset($data['datas'])){
          $data['datas'] = Aescode::model()->aesEncrypt(json_encode($data['datas'],JSON_UNESCAPED_SLASHES),$key,empty($_POST['iosign'])?1:0);
        }else{
//          $this->db->put_msg("vsign:".json_encode($_POST,JSON_UNESCAPED_SLASHES));
        }
        }
    $data['stime']=time();
    ob_clean();
    exit(json_encode($data,JSON_UNESCAPED_SLASHES));
  }

}
