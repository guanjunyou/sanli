<?php
/**
 * 字符串截取，支持中文和其他编码
 * @static
 * @access public
 * @param string $str 需要转换的字符串
 * @param string $start 开始位置 
 * @param string $length 截取长度
 * @param string $charset 编码格式
 * @param string $suffix 截断显示字符
 * @return string
 */
function msubstr($str, $start = 0, $length, $charset = "utf-8", $suffix = true) {
    $str = trim(clear_html(str_replace('&nbsp;', '', strip_tags($str))));
    if (mb_strlen($str) > $length) {
        $isSuffix = true;
    } else {
        $isSuffix = false;
    }
    if (function_exists("mb_substr"))
        $slice = mb_substr($str, $start, $length, $charset);
    elseif (function_exists('iconv_substr')) {
        $slice = iconv_substr($str, $start, $length, $charset);
        if (false === $slice) {
            $slice = '';
        }
    } else {
        $re['utf-8'] = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
        $re['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
        $re['gbk'] = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
        $re['big5'] = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
        preg_match_all($re[$charset], $str, $match);
        $slice = join("", array_slice($match[0], $start, $length));
    }
    if ($str == $slice) {
        return $slice;
    } else {
        return $suffix && $isSuffix ? $slice . '…' : $slice;
    }
}

function substr_hz($str,$start,$len=0){
 return subsstr_hz($str,$start,$len);
}
function subsstr_hz($str,$start,$len=0){
   if ($len==0){
        $len=strlen_hz($str)-$start;
    }
 return mb_substr($str,$start,$len,'UTF-8');   
}

function tostr($pvalue,$plen){
    return substr('0000000'.$pvalue, -1,$plen);
}
function  num2str($pvalue,$plen){
    return substr('00000000'.$pvalue,0,-$plen);
}

function strlen_hz($str){
 return mb_strlen($str,'UTF-8');
}


//将内容进行UNICODE编码
function unicode_encode($name)
{
  $name = iconv('UTF-8', 'UCS-2', $name);
  $len = strlen($name);
  $str = '';
  for ($i = 0; $i < $len - 1; $i = $i + 2)
  {
    $c = $name[$i];
    $c2 = $name[$i + 1];
    if (ord($c) > 0)
    {  // 两个字节的文字
      $str .= '\u'.base_convert(ord($c), 10, 16).base_convert(ord($c2), 10, 16);
    }
    else
    {
      $str .= $c2;
    }
  }
  return $str;
}
function unicode_decode($name)
{
  // 转换编码，将Unicode编码转换成可以浏览的utf-8编码
  $pattern = '/([\w]+)|(\\\u([\w]{4}))/i';
  preg_match_all($pattern, $name, $matches);
  if (!empty($matches))
  {
    $name = '';
    for ($j = 0; $j < count($matches[0]); $j++)
    {
      $str = $matches[0][$j];
      if (strpos($str, '\\u') === 0)
      {
        $code = base_convert(substr($str, 2, 2), 16, 10);
        $code2 = base_convert(substr($str, 4), 16, 10);
        $c = chr($code).chr($code2);
        $c = iconv('UCS-2', 'UTF-8', $c);
        $name .= $c;
      }
      else
      {
        $name .= $str;
      }
    }
  }
  return $name;
}
/**
 * 获取客户端IP地址
 * @param integer $type 返回类型 0 返回IP地址 1 返回IPV4地址数字
 * @return mixed
 */
function get_client_ip($type = 0) {
    $type = $type ? 1 : 0;
    static $ip = NULL;
    if ($ip !== NULL)
        return $ip[$type];
    if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $arr = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
        $pos = array_search('unknown', $arr);
        if (false !== $pos)
            unset($arr[$pos]);
        $ip = trim($arr[0]);
    } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (isset($_SERVER['REMOTE_ADDR'])) {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    // IP地址合法验证
    $long = sprintf("%u", ip2long($ip));
    $ip = $long ? array($ip, $long) : array('0.0.0.0', 0);
    return $ip[$type];
}

function show_status($status, $msg = '', $redirect = '',$msg2 = '', $redirect2 = '') {
     if ($status) { ajax_status(1, $msg, $redirect);  
        } else {
         ajax_status(0, $msg2, $redirect2);
       }
 }
 
function ajax_status($status = 0, $msg = '', $redirect = '') {
    ajax_exit(array('status' => $status, 'msg' => $msg, 'redirect' => $redirect));
}

function ajax_status_apply($status = 0, $gfid = 0, $zsxm = '', $card_type='', $card_num='') {
    ajax_exit(array('status' => $status, 'gfid' => $gfid, 'zsxm' => $zsxm,  'card_type' => $card_type, 'card_num' => $card_num));
}function ajax_status_attr($status = 0, $redirect = '') {
    ajax_exit(array('status' => $status, 'redirect' => $redirect));
}
function ajax_status_gamereferee($status = 0, $gfid = 0, $real_name = '',$head_pic = '',$contect = '',$sex = 0, $sex_name='', $gf_code='') {
    ajax_exit(array('status' => $status, 'gfid' => $gfid, 'real_name' => $real_name, 'head_pic' => $head_pic, 'contect' => $contect, 'sex' => $sex, 'sex_name' => $sex_name, 'gf_code' => $gf_code));
}

function ajax_status_gamesign($status = 0, $gfid = 0, $real_name = '',$head_pic = '',$contect = '',$sex = 0, $sex_name='', $birthday='', $card_type='', $card_num='') {
    ajax_exit(array('status' => $status, 'gfid' => $gfid, 'real_name' => $real_name, 'head_pic' => $head_pic, 'contect' => $contect, 'sex' => $sex, 'sex_name' => $sex_name, 'birthday' => $birthday, 'card_type' => $card_type, 'card_num' => $card_num));
}
function ajax_status_Insurance($status = 0, $gfid = 0, $real_name = '',$contect = '', $card_type='',$card_type_name='', $card_num='') {
    ajax_exit(array('status' => $status, 'gfid' => $gfid, 'real_name' => $real_name, 'contect' => $contect,'card_type' => $card_type,'card_type_name'=>$card_type_name, 'card_num' => $card_num));
}
function ajax_exit($arr) {
    header('Content-type:application/json');
    echo array_str($arr);
    exit;
}

function array_str($arr) {
    return CJSON::encode($arr);
}
/**
 * 设置cookie
 * @param string $name 名称
 * @param mixed $value 值
 * @param integer $day 有效天数
 * @return string
 */
function set_cookie($name, $value, $day = 1) {
    $cookie = new CHttpCookie($name, $value);
    $cookie->expire = time() + 60 * 60 * 24 * $day;
    Yii::app()->request->cookies[$name] = $cookie;
}

/**
 * 获取cookie
 * @param string $name 名称
 * @return mixed
 */
function get_cookie($name) {
    $cookie = Yii::app()->request->getCookies();
    if (null === $cookie[$name]) {
        return null;
    }
    return $cookie[$name]->value;
}

/**
 * 删除cookie
 * @param string $name 名称
 */
function del_cookie($name) {
    $cookie = Yii::app()->request->getCookies();
    unset($cookie[$name]);
}

function get_session($name) {
   $rs=0;
 
   if(!isset($_SESSION)){ session_start();}
 
   if (isset(Yii::app()->session[$name])){
                $rs=Yii::app()->session[$name] ;}
   return $rs;
}

function get_belong_data() {
   return get_session('data_belong');
}

function set_session($name,$pvalue) {
   if(!isset($_SESSION)){ session_start();}
   $_SESSION[$name]=$pvalue;
}


function sql_update($sql){
 return sql_command($sql);
}

function sql_delete($sql){
  return sql_command($sql);
}

function sql_command($sql){
    $connection=Yii::app()->db;
    return $connection->createCommand($sql)->execute();
}

function sql_find($sql){
 return sql_findall($sql);
}

function sql_findone($sql){
    $connection=Yii::app()->db;
    return $connection->createCommand($sql)->queryOne();
 }

function sql_findall($sql){
    $connection=Yii::app()->db;
    return $connection->createCommand($sql)->queryAll();
 }

function sql_sum($table,$where,$field){
    $sql="select sum({$field}) sl from {$table} where {$where}";
    $tmp= sql_findall($sql);
    $sl=0;
    if(!empty($tmp)){
        foreach ($tmp as $v){
          if(!empty($v->sl))
          {
          $sl=$sl+$v;}
        }
    }
    return $sl;
 }
// 返回多行. 每行都是列名和值的关联数组.
// 如果该查询没有结果则返回空数组
//$posts = Yii::$app->db->createCommand('SELECT * FROM post')->queryAll();

// 返回一行 (第一行)
// 如果该查询没有结果则返回 false
//$post = Yii::$app->db->createCommand('SELECT * FROM post WHERE id=1')
 //          ->queryOne();

// 返回一列 (第一列)
// 如果该查询没有结果则返回空数组
//$titles = Yii::$app->db->createCommand('SELECT title FROM post')
//             ->queryColumn();

// 返回一个标量值
// 如果该查询没有结果则返回 false
//$count = Yii::$app->db->createCommand('SELECT COUNT(*) FROM post')
//             ->queryScalar();
/**
 * 把返回的数据集转换成Tree
 * @access public
 * @param array $list 要转换的数据集
 * @param string $pid parent标记字段
 * @return array
 */


 function downList($datalist,$idname,$showname,$selectname,$style='',$pvalue='') {
      if(empty($pvalue)){
        $pvalue=Yii::app()->request->getParam($selectname);
      }
      $html='<select name="'.$selectname.'" '.$style.'>';
      $html.='<option value="">请选择</option>';
      if (is_array($datalist)){
      foreach($datalist as $v){
       $html.='<option value="'.$v[$idname].'"'.(($v[$idname]==$pvalue) ? ' selected >' :'>');
       $html.=$v[$showname].'</option>';
       }
      }
       $html.='</select>';
       return $html;
    }
//检查$_POST变量是否存在，不存在，设置后面的值
 function check_post($pvarname,$pdefault=0) {
   if(empty($_POST[$pvarname])){
        $_POST[$pvarname]=$pdefault;
    }
  }

//检查$_REQUEST变量是否存在，不存在，设置后面的值
 function check_request($pvarname,$pdefault=0) {
   if(empty($_REQUEST[$pvarname])){
        $_REQUEST[$pvarname]=$pdefault;
    }
  }
  
function list_to_tree($list, $pk = 'id', $pid = 'pid', $child = '_child', $root = 0) {
    // 创建Tree
    $tree = array();
    if (is_array($list)) {
        // 创建基于主键的数组引用
        $refer = array();
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] = & $list[$key];
        }
        foreach ($list as $key => $data) {
            // 判断是否存在parent
            $parentId = $data[$pid];
            if ($root == $parentId) {
                $tree[] = & $list[$key];
            } else {
                if (isset($refer[$parentId])) {
                    $parent = & $refer[$parentId];
                    $parent[$child][] = & $list[$key];
                }
            }
        }
    }
    return $tree;
}

/**
 * 快速文件数据读取和保存 针对简单类型数据 字符串、数组
 * @param string $name 缓存名称
 * @param mixed $value 缓存值
 * @param string $path 缓存路径
 * @return mixed
 */
function file_cache($name, $value = '', $path = ROOT_PATH) {
    static $_cache = array();
    $filename = $path . '/' . $name . '.php';
    if ('' !== $value) {
        if (is_null($value)) {
            // 删除缓存
            return false !== strpos($name, '*') ? array_map("unlink", glob($filename)) : unlink($filename);
        } else {
            // 缓存数据
            $dir = dirname($filename);
            // 目录不存在则创建
            if (!is_dir($dir))
                mkdir($dir, 0755, true);
            $_cache[$name] = $value;
            return file_put_contents($filename, strip_whitespace("<?php\treturn " . var_export($value, true) . ";?>"));
        }
    }
    if (isset($_cache[$name]))
        return $_cache[$name];
    // 获取缓存数据
    if (is_file($filename)) {
        $value = include $filename;
        $_cache[$name] = $value;
    } else {
        $value = false;
    }
    return $value;
}

/**
 * 浏览器友好的变量输出
 * @param mixed $var 变量
 * @param boolean $echo 是否输出 默认为True 如果为false 则返回输出字符串
 * @param string $label 标签 默认为空
 * @param boolean $strict 是否严谨 默认为true
 * @return void|string
 */
function dump($var, $echo = true, $label = null, $strict = true) {
    $label = ($label === null) ? '' : rtrim($label) . ' ';
    if (!$strict) {
        if (ini_get('html_errors')) {
            $output = print_r($var, true);
            $output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
        } else {
            $output = $label . print_r($var, true);
        }
    } else {
        ob_start();
        var_dump($var);
        $output = ob_get_clean();
        if (!extension_loaded('xdebug')) {
            $output = preg_replace('/\]\=\>\n(\s+)/m', '] => ', $output);
            $output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
        }
    }
    if ($echo) {
        echo($output);
        return null;
    } else
        return $output;
}

function mk_dir($path, $mode = 0755) {
    if (!file_exists($path)) {
        mk_dir(dirname($path), $mode);
        mkdir($path, $mode);
    }
}

function get_date_path($bpath){
    $ymd = date("Ymd");
    $yy=$bpath.substr($ymd,0,4);mk_dir($yy);
    $yy.='/'.substr($ymd,4,2);mk_dir($yy);
    $yy.='/'.substr($ymd,6,2);mk_dir($yy); 
    return $yy.'/';
}

function get_date_default($pday,$ptype=0){
    if(empty($pday)){
         $pday = date('Y-m-d').(($ptype==0) ? "" : ' 23:59:59');
    }
    return $pday;
}

function encrypt($str, $salt = '') {
    return md5($str . '!@#$%' . $salt . '^&*()');
}

function clear_html($content) {
    $content = preg_replace("/<a[^>]*>/i", "", $content);
    $content = preg_replace("/<\/a>/i", "", $content);
    $content = preg_replace("/<div[^>]*>/i", "", $content);
    $content = preg_replace("/<\/div>/i", "", $content);
    $content = preg_replace("/<!--[^>]*-->/i", "", $content); //注释内容
    $content = preg_replace("/style=.+?['|\"]/i", '', $content); //去除样式
    $content = preg_replace("/class=.+?['|\"]/i", '', $content); //去除样式
    $content = preg_replace("/id=.+?['|\"]/i", '', $content); //去除样式   
    $content = preg_replace("/lang=.+?['|\"]/i", '', $content); //去除样式    
    $content = preg_replace("/width=.+?['|\"]/i", '', $content); //去除样式 
    $content = preg_replace("/height=.+?['|\"]/i", '', $content); //去除样式 
    $content = preg_replace("/border=.+?['|\"]/i", '', $content); //去除样式 
    $content = preg_replace("/face=.+?['|\"]/i", '', $content); //去除样式 
    $content = preg_replace("/face=.+?['|\"]/", '', $content); //去除样式 只允许小写 正则匹配没有带 i 参数

    return $content;
}

/*
* 实现AES加密
* $str : 要加密的字符串
* $keys : 加密密钥
* $iv : 加密向量
* $cipher_alg : 加密方式
*/
function ecaes($str,$keys="QMDD2qrcode&Base",$iv="cw1kzditcxJjb2ri",$cipher_alg=MCRYPT_RIJNDAEL_128){
  $encrypted_string = bin2hex(mcrypt_encrypt($cipher_alg, $keys, $str, MCRYPT_MODE_CBC,$iv));
  return $encrypted_string;
}
/*
* 实现AES解密
* $str : 要解密的字符串
* $keys : 加密密钥
* $iv : 加密向量
* $cipher_alg : 加密方式
*/
function deaes($str,$keys="QMDD2qrcode&Base",$iv="cw1kzditcxJjb2ri",$cipher_alg=MCRYPT_RIJNDAEL_128){
  $decrypted_string = mcrypt_decrypt($cipher_alg, $keys, pack("H*",$str),MCRYPT_MODE_CBC, $iv);
  return $decrypted_string;
}

// discuz 加密解密函数
function authcode($string, $operation = 'DECODE', $key = 'wzg', $expiry = 0) {
    $ckey_length = 4;
    $key = md5($key);
    $keya = md5(substr($key, 0, 16));
    $keyb = md5(substr($key, 16, 16));
    $keyc = $ckey_length ? ($operation == 'DECODE' ? substr($string, 0, $ckey_length) : substr(md5(microtime()), -$ckey_length)) : '';

    $cryptkey = $keya . md5($keya . $keyc);
    $key_length = strlen($cryptkey);

    $string = $operation == 'DECODE' ? base64_decode(substr($string, $ckey_length)) : sprintf('%010d', $expiry ? $expiry + time() : 0) . substr(md5($string . $keyb), 0, 16) . $string;
    $string_length = strlen($string);

    $result = '';
    $box = range(0, 255);

    $rndkey = array();
    for ($i = 0; $i <= 255; $i++) {
        $rndkey[$i] = ord($cryptkey[$i % $key_length]);
    }

    for ($j = $i = 0; $i < 256; $i++) {
        $j = ($j + $box[$i] + $rndkey[$i]) % 256;
        $tmp = $box[$i];
        $box[$i] = $box[$j];
        $box[$j] = $tmp;
    }

    for ($a = $j = $i = 0; $i < $string_length; $i++) {
        $a = ($a + 1) % 256;
        $j = ($j + $box[$a]) % 256;
        $tmp = $box[$a];
        $box[$a] = $box[$j];
        $box[$j] = $tmp;
        $result .= chr(ord($string[$i]) ^ ($box[($box[$a] + $box[$j]) % 256]));
    }

    if ($operation == 'DECODE') {
        if ((substr($result, 0, 10) == 0 || substr($result, 0, 10) - time() > 0) && substr($result, 10, 16) == substr(md5(substr($result, 26) . $keyb), 0, 16)) {
            return substr($result, 26);
        } else {
            return '';
        }
    } else {
        return $keyc . str_replace('=', '', base64_encode($result));
    }
}

function urlauthcode($string, $operation = 'DECODE', $key = 'zsylwzg888', $expiry = 0) {
    if ($operation == 'DECODE') {
        $string = base64_decode($string);
        return authcode($string, $operation, $key, $expiry);
    } else {
        return base64_encode(authcode($string, $operation, $key, $expiry));
    }
}

function https_request($url) {
    if (function_exists('curl_init')) {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $data = curl_exec($curl);
        if (curl_errno($curl)) {
            return null;
        }
        curl_close($curl);
        return $data;
    } else {
        if (file_exists($url)) {
            $data = file_get_contents($url);
            return $data;
        } 
    }
    return null;
}

function file_to_str($filename)
     {
     // global $p_publicpath;
      $content="";          
      if(indexof($filename,'.')>0){
          //   $filename="http://upload.gfinter.net/2018/04/18/23/87_gm_361__182349540674.jpg";
             // $p_publicpath->get_www_path().$filename;
      try{
           $handle = @fopen($filename,"rb");
           if ($handle>0){
           $i=0;
          do {
                $data = fread($handle, 8192);
                if (strlen($data) == 0) {
                   break; 
                }
               $content .= $data; 
            } while(true);
          @fclose ($handle);
         }
         // $content=str_replace('\\"','"',$content);
        } 
        catch (Exception $e) {
         $content=""; 
       }
      }
     // $content='设计此种编码是为了使二进制数据可以通过非纯 8-bit 的传输层传输，例如电子邮件的主体。';
        return  base64_encode(urlencode($content));
     }

function getTime(){
 $time = explode ( " ", microtime () );  
 $time = "".($time [0] * 1000);  
 $time2 = explode ( ".", $time );  
 $time = $time2 [0]; 
 $s1=str_replace('-','',date('Y-m-d H:i:s',time()));
 $s1=str_replace(':','',$s1);
 $s1=str_replace(' ','',$s1);
 return $s1.$time;
//2010-08-29 11:25:26
}


function get_short_path(){
    $ymd = date("Ymd");
    $yy=  substr($ymd,0,4);
    $yy.='/'.substr($ymd,4,2);;
    $yy.='/'.substr($ymd,6,2);
    return $yy.'/';
}

function get_date(){
    return date('Y-m-d H:i:s',time());
}
function get_file_name($key=""){
      return get_short_path().getTime();
}


//保存文件
function post_upload_file($filename, $content, $prefix = '', $ext = 'html') {
    // 保存到远程服务器接口
    // str_to_html_ke4($str,$filename,$param)
  //  $streamData =$content;// file_get_contents($filename);
    $param['fileType']=$ext;
    $param['fileCode']=$prefix;//早期文件名的前部分组成$fileCode;
    return  str_to_file($content,$filename,$param);

}


function str_to_file($str_content,$filename,$param) //内容保存文件
    {  
      if (indexof(strtolower($filename),'.htm')>=0){
          $str_content=str_replace('\\"','"',$str_content);
       }
       $param['fileType']=".html";
       $param['oldfilename']=$filename;
       $data=BaseCode::model()->saveFileTo73($str_content,$param);
       return $data;//['code']==0) ? $data['filename'] : "";
    }

function str_to_html($str,$filename,$param) //内容保存文件
    { 
     
      $str=str_replace(BasePath::model()->get_wpath(),'<gf></gf>',$str);
      $str=str_replace(BasePath::model()->get_www_gwpath(),'<gw></gw>',$str);
      return str_to_file($str,$filename,$param);
    }

function str_save_to_html($file, $content, $basepath = null, $strtr = array()){
   return set_html($file, $content, $basepath, $strtr);
}

function set_html($file, $content, $basepath = null, $strtr = array()) {
    $prefix = '';
    if ($basepath != null) {
        $content = strtr($content, array($basepath->F_WWWPATH => '<gf></gf>'));
        $prefix = $basepath->F_CODENAME;
    }
    if (!empty($strtr)) {
        $content = strtr($content, $strtr);
    }

    $htmlHeader ='<!doctype html><html><head>
<meta charset="utf-8"><title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;"/>
<style>
*{
    margin:0; padding:0;
    -webkit-tap-highlight-color:rgba(0,0,0,0);}
img{
	max-width:100%;}
body{
	line-height:1.8;font-size:20px;color:#000;
	-webkit-text-size-adjust:none;
	-o-text-size-adjust:none;
	text-size-adjust:none;
	background:#fff;}
.qmdd-wrapper{}
</style>
<script type="text/javascript">
    window.onload = function() {
        var h  = document.body.scrollHeight;
        parent.postMessage(h, "http://web.gf41.cn/");
    }
</script></head>
<body><div class="qmdd-wrapper">
<!--详情开始--->';
//域名修改**********************************************************************************
//公网公测：http://web.gfinter.net/
    $htmlFooter ='<!--详情结束---></div></body></html>';
    $param['fileCode']=$prefix;
    $rs = str_to_html($htmlHeader . $content . $htmlFooter,$file,$param);
    return $rs;
}

// $file 文件完整路径
// $path 替换内容中占位符的路径
function get_html($file, $basepath = null, $strtr = array()) {
    if (check_file_exists($file)) {
     $content = file_get_contents($file."?_".time());
	    //     $rs = preg_match('%<!--详情开始--->(.*?)<!--详情结束--->%si', $content, $matches);
        // if (!$rs) {
        //     return '';
        // } else {
			
        //     $content = $matches[1];
        // }

        if ($basepath != null) {
            $content = strtr($content, array('<gf></gf>' => $basepath->F_WWWPATH));
            $content = strtr($content, array('<gw></gw>' => $basepath->F_WWWPATH));
        }
        if (!empty($strtr)) {
            $content = strtr($content, $strtr);
        }
        return $content;
    } else {
        return '';
    }
}

function getimages($str) {
    preg_match_all('/<img[^>]*src\s*=\s*([\'"]?)([^\'" >]*)\1/isu', $str, $src);
    return $src[2];
}

function round_dp($num, $dp) {
    $sh = pow(10, $dp);
    return (round($num * $sh) / $sh);
}

//size()  统计文件大小
function size($byte) {
    if ($byte < 1024) {
        $unit = "B";
    } else if ($byte < 1048576) {
        $byte = round_dp($byte / 1024, 2);
        $unit = "KB";
    } else if ($byte < 1073741824) {
        $byte = round_dp($byte / 1048576, 2);
        $unit = "MB";
    } else {
        $byte = round_dp($byte / 1073741824, 2);
        $unit = "GB";
    }

    $byte .= $unit;
    return $byte;
}

function pass_md5($ec_salt,$pass){ return empty( $ec_salt ) ?  $pass  : md5(  $pass  . $ec_salt );}

function get_basename($filename) {
    return substr($filename, 0, -strlen(strrchr($filename, '.')));
}

//判断文件是否存在
function check_file_exists($url) {
    $curl = curl_init($url);
// 不取回数据 
    curl_setopt($curl, CURLOPT_NOBODY, true);
// 发送请求 
    $result = curl_exec($curl);
    $found = false;
// 如果请求没有发送失败 
    if ($result !== false) {
// 再检查http响应码是否为200 
        $statusCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
        if ($statusCode == 200) {
            $found = true;
        }
    }
    curl_close($curl);

    return $found;
}

function send_request($url, $paramArray, $method = 'POST', $timeout = 10) {

    $ch = curl_init();

    if ($method == 'POST') {
        $paramArray = is_array($paramArray) ? http_build_query($paramArray) : $paramArray;
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $paramArray);
    } else {
        $url .= '?' . http_build_query($paramArray);
    }

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    if (false !== strpos($url, "https")) {
        // 证书
        // curl_setopt($ch,CURLOPT_CAINFO,"ca.crt");
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    }
    $resultStr = curl_exec($ch);
    $result = json_decode($resultStr, true);
    return ($result) ? $result : $resultStr;
}

 function get_data_from_url($purl,$post_data){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $purl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); // 获取数据返回  true
        curl_setopt($ch, CURLOPT_POST, 1); //POST数据// 在启用 CURLOPT_RETURNTRANSFER 时候将获取数据返回 
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data); //post变量true
        $dat = curl_exec($ch);
        curl_close($ch);
        return json_decode($dat, true);
 }
//域名修改**********************************************************************************
//公网公测：http://web.gfinter.net/
  function notify_conten_url(){
     $notify_io_rul="http://web.gf41.cn/QMDD_MQTT_WEB_CLIENT/notifyServlet"; //通知系统接口
     return  $notify_io_rul;
   }
 //下单接口  
   function get_add_order_details($order_num){
     $notify_io_rul="http://gw.gf41.cn/main.php?c=io&a=io_game&device_type=7"; //下单接口 
     $param=array('action'=>'get_add_order_details','car_num'=>$order_num,'get_insurance'=>1,'pay'=>1);
     return get_data_from_url($notify_io_rul,$param);
   }
   function send_message($sgfid,$rgfid,$message,$post_data="")
   {
       $ms= notify_conten_url().$message;
       $ms.="&targetGfid=".$rgfid;
       $ms.="&sourceGfid=".$sgfid;
       return send_request($ms,$post_data);
   }

   function send_msg($scode,$sourceGfid,$targetGfid,$sendArr)
   { 
     $sendArr['notifyTime']=get_date();    
     $notify_content=json_encode($sendArr);
     $save_buf=base64_encode($notify_content);
     $post_data=array("action"=>'notify',"targetGfid"=>$targetGfid,"sourceGfid"=>$sourceGfid,"S_G"=>0,
        "channel_id"=>$scode,"lParm"=>0,"notify_content"=>$notify_content,"save_buf"=>$save_buf);
     $s2= get_data_from_url(notify_conten_url(),$post_data);
     return $s2;
   }

   function system_message1($targetGfid,$message)
   {
     $sendArr=array("id"=>3,"type"=>"系统通知","pic"=>"","title"=>$message,"content"=>"系统通知","url"=>"");
     return send_msg(1000,0,$targetGfid,$sendArr);
   }
      function system_message($targetGfid,$message)
   {
     $sendArr=array("type"=>"系统通知","pic"=>"","title"=>$message,"content"=>"系统通知","url"=>"");
     return send_msg(1001,0,$targetGfid,$sendArr);
   }

   function send_password($targetGfid,$password)
   {
     return system_message($targetGfid,"后台登录密码：".$password);
     //return $this-> invite_club_member($club_id,$projctid,$rgfid,-1,320);   
   } 

    //f($action==301){//俱乐部邀请成员加入
 function invite_club_member($club_id,$rgfid,$sendArr)
   {
     $sendArr['club_id']=$club_id;$sendArr['append_buf']="邀您加入本俱乐部";
     $sendArr['member_type']="0";
     return send_msg(301,$club_id,$rgfid,$sendArr);
   // $sendArr=array("club_name"=>"俱乐部名称","project_name"=>"太极拳",
   //     "project_id"=>"29","club_created_gfid"=>"30",
   //     "club_created_account"=>"669967","club_logo"=>"1451038023332_898.jpg");
 }

   //f($action==327){//俱乐部解除学员通知
 function club_member_del($club_id,$rgfid,$sendArr)
   {
     return send_msg(327,$club_id,$rgfid,$sendArr);
 }
// else if($action==302){//被我邀请的人同意或拒绝俱乐部入会邀请
 function member_into_club($club_id,$rgfid,$sendArr)
   {      

    return send_msg(302,$club_id,$rgfid,$sendArr);
    // $sendArr=array("invited_gfid"=>"30","invited_gfaccount"=>"669967","invited_gfnick"=>"阿菜","operate_state"=>"0","project_id"=>"38","project_name"=>"太极拳","notifyTime"=>$notifyTime);
        
  
}
//f($action==330){//社区单位学员注册相关通知
 function club_member_list($club_id,$rgfid,$sendArr)
   {
     return send_msg(330,$club_id,$rgfid,$sendArr);
 }
 
 //f($action==331){//单位服务者相关通知
 function club_qualification($club_id,$rgfid,$sendArr)
   {
     return send_msg(331,$club_id,$rgfid,$sendArr);
 }


//f($action==315){//裁判报名审核结果通知
 function game_audit($club_id,$rgfid,$sendArr)
   {
     return send_msg(315,$club_id,$rgfid,$sendArr);
 }   //326——//协助申述找回密码326——//协助申述找回密码
//1、"apply_id": "26",//申述id
//2、"s_nick": "", //申述人昵称
//3、"s_head": "",//申述人头像
//4、s_gfid:"27",//申述人gfid
//6、notifyTime:"2016-02-03 12:32:53"
//{"apply_id":"26"," s_nick ":"","s_head":"","s_gfid":"","notifyTime":"2016-07-11 16:23:07"}

 //function recover_password($club_id,$rgfid,$sendArr)
  // {
     //$sendArr['club_id']=$club_id;$sendArr['append_buf']="邀您加入本俱乐部";
     //$sendArr['member_type']="0";
    // return send_msg(327,$club_id,$rgfid,$sendArr);
 //} 
 


   //解除会员if($action==320){ //社区单位资质人解聘消息
    function deinvite_club_member($club_id,$rgfid,$sendArr)
   {
     $sendArr['gfid']=$rgfid;
     $sendArr['club_id']=$club_id;
     return send_msg(320,$club_id,$rgfid,$sendArr);
     //return $this-> invite_club_member($club_id,$projctid,$rgfid,-1,320);   
   } 

  //社区单位收到应聘通知（资质人申请加入某社区）($action==319
  function invite_member($club_id,$projctid,$rgfid,$sendArr)
   {
     $sendArr['gfid']=$rgfid;
     $sendArr['project_id']=$projctid;
     return send_msg(319,$club_id,$rgfid,$sendArr);
     //$sendArr=array("qualificate_num"=>"TS-C0-2015-02321","gfid"=>"30","gfaccount"=>"669967","qname"=>"张三丰","phone"=>"13098765678","address"=>"海南文昌","project_id"=>"27","project_name"=>"太极拳","notifyTime"=>$notifyTime);
      
    // $sendArr=$p_clublist->get_invite($club_id,$projctid,$rgfid,$itype);
    // return $this-> send_msg($opcode,$club_id,$rgfid,$sendArr);   

   }


//if($action==323){ //会员等级变更通知
 function level_member_change($club_id,$rgfid,$sendArr)
   {
     // $sendArr=array("gfid"=>$rgfid,"gfaccount"=>"669967",
     //   "changeLevel"=>$old_level,"changedNum"=>$new_level,
      //  "project_id"=>$projctid,"project_name"=>"太极拳");   
     return send_msg(323,$club_id,$rgfid,$sendArr);

   }
//if($action==324){ //社区单位向某应聘资质人发出面试邀请
 function invite_qualificate_member($club_id,$rgfid,$sendArr)
   {
       return send_msg(324,$club_id,$rgfid,$sendArr);
    /* "club_id": "23", //俱乐部ID
        "club_name":"小小俱乐部", //俱乐部名
        "club_logo": "xxxx.jpg", //俱乐部缩略图
        "club_phone":"13098765678",// 俱乐部电话
        "customer_gfid":"30",//客服GFID
        "customer_gfaccount":"669967", //客服帐号
        "customer_gfnick":"阿菜"//客服昵称*/
        $sendArr=array("club_id"=>"23","club_name"=>"俱乐部","club_logo"=>"xxxx.jpg","club_phone"=>"13098765678","customer_gfid"=>"30","customer_gfaccount"=>"669967","customer_gfnick"=>"阿明");

    }
    
    //if($action==306){ //社区单位向资质人发出邀请函
 function club_invite_qualification($club_id,$rgfid,$sendArr)
   {
       return send_msg(306,$club_id,$rgfid,$sendArr);
      /* $club_id=$_REQUEST['club_id'];
	   $club_name=$_REQUEST['club_name'];
	   $project_id=$_REQUEST['project_id'];
	   $project_name=$_REQUEST['project_name'];
	   $qualification_type=$_REQUEST['qualification_type'];
		$content=$_REQUEST['content'];*/
        $sendArr=array("club_id"=>"23","club_name"=>"俱乐部","project_id"=>"188","project_name"=>"太极","qualification_type"=>"裁判员","content"=>"邀请函内容","notifyTime"=>$notifyTime);

    }


function get_qmddadmin_path(){
    $s1 =get_service_path();
    $r1=indexof($s1,'qmdd_admin');
    $path =$s1;
    if ($r1>=0) $path=substr($s1,0,($r1-1));
    return $path;
}

function get_service_path(){
    $p1='HTTP_X_FORWARDED_HOST';
    $s1 = isset($_SERVER[$p1]) ? $_SERVER[$p1] : (isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '');

    return $s1;
}

function get_qmdd_path(){
       return get_qmddadmin_path()."/qmdd_admin/admin/qmdd2018/";
}

function get_yii_path(){
    return get_qmddadmin_path()."/qmdd_admin/admin/qmdd2018/";
}

// 原来条件，现在条件，属性名，值，前缀名
   function get_where($pw0,$pwhere,$pfields,$pvalue,$pdelc="")
    {   $bs="=";
        if (indexof($pfields,'=')>=0 || indexof($pfields,'>')>=0 || indexof($pfields,'<')>=0) $bs="";
        $pw1=(empty($pwhere)) ? "" : $pfields . $bs . $pdelc . $pvalue . $pdelc;
        $pw0.=((empty($pw0) || empty($pw1))  ? "" : " and ").$pw1 ;
        return $pw0;
    }
      
   function get_where_club_project($club_field='',$project_field='')
    {   
        $ci_d=get_SESSION('use_club_id');
        $ci_d=(($ci_d=="0")||(empty($ci_d))||(empty($club_field))) ? '(1=1)' : 
        $club_field.((indexof($ci_d,',')>=0) ? 'in ('. $ci_d .')' : '='. $ci_d );
        $project='';
        if(!empty($project_field)){
           $project=get_SESSION('club_project');
           $project=(empty($project)) ? '0' :  $project;
           if ($project=='0'){
            $project=get_admin_project(get_SESSION('admin_id'));
           }
           $project= ($project=='0') ? '' :  $project_field .' in ('.  $project .')';
         }
       //    put_msg(  '11100= '.$ci_d.((empty($project)) ? "" : " and ".$project).' ');
      
        return ' '.$ci_d.((empty($project)) ? "" : " and ".$project).' ';
    }

/* 获取管理员列表 */
//read_table($where="1=1",$s1="*",$order="",$group="",$table="")
    function get_admin_project($_id) {
        $str="0";
        $tmp=Qmddadministratorsproject::model()->findALL("qmdd_admin_id={$_id}");
        foreach($tmp as $v){
             $str.=','.$v['project_id'];
        }
        //$order='admin_gfaccount';
        return  $str;
    
    }

// LJOIN
   function left_join($tabele,$onwhere)
    {
        return ' left join '. $tabele .' on '. $onwhere ;
    }

// 原来条件，现在条件，属性名，值，前缀名
   function get_where_like($pw0,$pwhere,$pfields,$pvalue)
    {
        $pw1=(empty($pwhere)) ? "" : $pfields . " like '%" . $pvalue ."%'";
        $pw0.=((empty($pw0) || empty($pw1))  ? "" : " and ").$pw1 ;
        return $pw0;
    }

// 原来条件，现在条件，属性名，值，前缀名
   function get_like($pw0,$pfields1,$pvalue,$pfields2="")
    {   if($pvalue=='undefined') $pvalue="";
        if(!empty($pvalue)){
          $pfields1.=empty($pfields2) ? "" : (",".$pfields2);
          $fs= explode(',',$pfields1);
          $pw1="";$aor="";
          for ($i = 0; $i < count($fs); $i = $i + 1) {
             $pw1.=$aor.  $fs[$i]. " like '%" . $pvalue ."%'";
             $aor=" or ";
           }
          $pw1=empty($pw1) ?"" :" ( ".$pw1." ) ";
          $pw0.=((empty($pw0) || empty($pw1))  ? "" : " and ").$pw1 ;
         }
        return $pw0;
    }
// 原来条件，现在条件，属性名，值，前缀名
   function get_where_in($pw0,$pwhere,$pfields,$pvalue='',$pdelc="")
    {
        if($pvalue=='undefined') $pvalue="";
        if($pwhere!=-1&&!empty($pwhere)&&!empty($pvalue)){
            $fs= explode(',',$pvalue);
            $pw1="";$aor="";
            for ($i = 0; $i < count($fs); $i = $i + 1) {
                $pw1.=$aor.  $pfields. "=" . $fs[$i] ;
                $aor=" or ";
            }
            $pw1=empty($pw1) ?"" :" ( ".$pw1." ) ";
            $pw0.=((empty($pw0) || empty($pw1))  ? "" : " and ").$pw1 ;
        }
        return $pw0;
    }
//$pvalue=$club;
   function get_where_club($pw0,$pfields,$pvalue='')
    {   
        if($pvalue=='undefined') $pvalue="";
        $pvalue=$_SESSION['use_club_id'];
        if($pwhere!=-1&&!empty($pwhere)&&!empty($pvalue)){
            $tmp='';
            $fs= explode(',',$pvalue);
            $pw1="";$aor="";
            for ($i = 0; $i < count($fs); $i = $i + 1) {
                $pw1.=$aor.  $pfields. "=" . $fs[$i] ;
                $aor=" or ";
            }
            $pw1=empty($pw1) ?"" :" ( ".$pw1." ) ";
            $pw0.=((empty($pw0) || empty($pw1))  ? "" : " and ").$pw1 ;
        }
        return $pw0;
    }

  //查找字符的位置，-1表示没找到
  function indexof($string,$find,$start=0){
        $pos=strpos($string,$find,$start);
        if($pos === false) { $pos=-1;}
        return $pos;
    }

    function rindexof($string,$find,$start=0){
        $pos=strrpos($string,$find,$start);
        if($pos === false) { $pos=-1;}
        return $pos;
    }

    function gf_implode($separator='|',$parray){
        $rs="";
        if(!empty($parray)){
            $rs=implode($separator,$parray);
        }
     return $rs;
  }

//转换审核编码
  function get_check_code($pcheck_code){
    $f_check= 721;
    if ($pcheck_code == 'shenhe') {
            $f_check= 371;
        } else if ($pcheck_code == 'baocun') {
            $f_check= 721;
        } else if ($pcheck_code == 'tongguo') {
          $f_check= 372;
        } else if ($pcheck_code == 'tongguo1') {
          $f_check= 372;
        } else if ($pcheck_code == 'butongguo') {
            $f_check= 373;
        }
      return $f_check;
  }

//把YII查询的数据转换成数组
//$cooperation,YII查询的表数据
//$$afieldstr 要转换的属性名称，用“，”分割
function toArray($cooperation,$afieldstr)
{
        $arr = array();$r=0;
        $afields=explode(',',$afieldstr);
        foreach ($cooperation as $v) {
             foreach($afields as $v1){
                 $vs=$v[$v1];
                 if(empty($vs)){
                    $vs="";
                 }
                 $arr[$r][$v1] = $vs;
                }
                $r=$r+1;
        }
        return $arr;
}
/*
   生成JAVA 的 echo '{data:'.json_encode(toArray($cooperation,'f_id,F_NAME,fater_id')).'}';
   //$cooperation,YII查询的表数据
//$$afieldstr 要转换的属性名称，用“，”分割

 */ 

function toJava_json($cooperation,$afieldstr)
{
    return '{data:'.json_encode(toArray($cooperation,$afieldstr)).'}';
}

function put_msg($pmsg,$parr=0){
        if (is_array($pmsg)){
            $pmsg=json_encode($pmsg);
        }
        $test = new Test;
        $test->isNewRecord = true;
        $test->f_msg=$pmsg;
        $test->f_time=get_date();
        $test->save();
    }
 //上传图片域名http:
function get_path(){
        $path='http://file.gf41.net:60';
        return $path;
} 
 //读取点播封面路径
function get_livepath(){
        $path='http://record.gf41.net/';
        return $path;
}   
function sendSms($mobile,$content_str,$country_code=86){
        $sms_account="C28578798";
        $sms_key="7a161a4ae2bec7c1a51c92705445b9f7";
        $cn_target = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
        $in_target = "http://api.isms.ihuyi.cn/webservice/isms.php?method=Submit";
        $target=$cn_target;
        if(($country_code!=8600)&&($country_code!=86)){
            $target=$in_target;
            $mobile=$country_code." ".$mobile;
        }
        $time=time();
        $content=rawurlencode($content_str);
        $password=md5($sms_account.$sms_key.$mobile.$content_str.$time);
        $post_data = "account=".$sms_account."&password=".$password;
        $post_data .="&mobile=".$mobile."&content=".$content."&time=".$time;
        $send_result=sms_post_url($target,$post_data,false,true);
        return xml_to_array($send_result);
    }

/**
     * Http post请求
     */
    function sms_post_url($url,$post_data,$header=false,$nobody=false,$isHttps=false){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, $header);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_NOBODY, $nobody);
        curl_setopt($ch, CURLOPT_POST, true);//POST数据
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);//post变量
        if ($isHttps === true) {
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER,  false);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST,  false);
        }
        $output = curl_exec($ch);
        $post_code=curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $output = ($post_code == '404' ||$post_code=='0')?"":$output;   
        curl_close($ch);
        return $output;
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
                $arr[$key] = xml_to_array( $subxml );
            }else{
                $arr[$key] = $subxml;
            }
        }
    }
    return $arr;
}

//random() 函数返回随机整数。
function random($length = 4 , $numeric = 0) {
    PHP_VERSION < '4.2.0' && mt_srand((double)microtime() * 1000000);
    if($numeric) {
        $hash = sprintf('%0'.$length.'d', mt_rand(0, pow(10, $length) - 1));
    } else {
        $hash = '';
        $chars = '123456789';
        $max = strlen($chars) - 1;
        for($i = 0; $i < $length; $i++) {
            $hash .= $chars[mt_rand(0, $max)];
        }
    }
    return $hash;
}

//$reread需要重新读，0不要，1需要
function get_role_access($pmodelname,$reread=0) {
    $role_tmp=get_session('role_access');
    if ((empty($role_tmp))||(!isset($role_tmp[$pmodelname]))||($reread)){
       $role_tmp=Menu::model()->get_role_power(get_session('level'),$pmodelname);
       Yii::app()->session['role_access']=$role_tmp;
    }
    return $role_tmp;
 }

//show_shenhe_box('保存|提交审核|审核通过|审核不通过')。
function get_action_name(&$r1,&$r2)
{   $r1=Yii::app()->controller->id;
    $r2='index';
    $s1=get_cookie('_currentUrl_').'&';
    if(indexof($s1,'%2F')>0){
       $s1= str_replace('%2F','/',$s1);
    }
    $i1=indexof($s1,'?r=');
    $i2=indexof($s1,'&');
    
    if(($i1>0)&&($i2>0)){
       $s1=substr($s1,$i1+3,$i2-3);
       $i1=indexof($s1,'/');
       $r1=substr($s1,0,$i1);
       $s1=substr($s1,$i1+1);
       $i1=indexof($s1,'&');
       $r2=substr($s1,0,$i1);
    }
    $r1=strtolower($r1);
 }

 function get_school_where($w,$school,$level,$class,$year,$term){
      $w1=get_name_where($w,$school,'school');
      $w1=get_name_where($w1,$level,'level');
      $w1=get_name_where($w1,$class,'class');
      $w1=get_name_where($w1,$year,'year');
      return get_name_where($w1,$term,'term'); 
}

function set_school_name_where($name,$sname) {
  if(!empty($name)){
      if(!isset($_REQUEST[$name]))  { $_REQUEST[$name]='';}
      $s1=$_REQUEST[$name];
      if(empty($s1) ||($s1='0')){
         $_REQUEST[$name]=get_session($sname);
      }
  }
}

function get_school_name($name,$sname) {
      if(empty($name)){
         $name=get_session($sname);
      }
      return $name;
  }
function set_school_combos(){
  $school=School::model()->find(); 
  $years=Yearlist::model()->findALL();
  $terms=Term::model()->findALL();
  $levels=Level::model()->findALL();
  $class=BaseCode::model()->getClass();
  $tclass=get_session('class_teacher');
}
function get_school_resquest(&$school,&$level,&$class,&$year,&$term){
  //set_school_combos();
     $school=get_school_name($school,'school');
     $level=get_school_name($level,'level');
     $class=get_school_name($class,'class');
     $year=get_school_name($year,'year');
     $term=get_school_name($term,'term'); 
}
       
function set_school_resquest($school,$level,$class,$year,$term){
      set_school_name_where($school,'school');
      set_school_name_where($level,'level');
      set_school_name_where($class,'class');
      set_school_name_where($year,'year');
      set_school_name_where($term,'term'); 
}

function show_shenhe_box($she_box_name) {
    $mname= ""; $ac= "";
    get_action_name($mname,$ac);
    $role_tmp= get_role_access($mname,1);//需要重新读
    $s1="";
    foreach ($she_box_name as $bname => $btitle) {
        $oname=$bname;
        $oname1=$bname;
        if($oname=='tongguo'){$oname1='shenhe';}
        if($oname=='tongguo1'){$oname1='shenhe';}
        if($oname=='butongguo'){$oname1='shenhe';}
        if($oname=='quxiao'){$oname1='shenhe';}
        if(($oname=='baocun') || ($oname=='shenhe')){$oname='update';$oname1='create';}
        if((isset($role_tmp[$mname][$ac][$oname]))||(isset($role_tmp[$mname][$ac][$oname1]))){
          $s1.='<button onclick="submitType='."'".$bname."'".'"';
          $s1.=' class="btn btn-blue" type="submit"> '.$btitle.'</button>&nbsp;';
        }
    }
    return $s1;
 }

function show_command($command,$url="",$title="") {
    $s1= "";$s2= "delete";
    $mname= ""; $ac= "";
    get_action_name($mname,$ac);
    $role_tmp= get_role_access($mname);
    if ($command == '添加') {
     $s1='<a class="btn" href="'.$url.'">';
     $s1.='<i class="fa fa-plus"></i>'.$title.'</a>';
     $s2='create';
    } else if ($command == '修改') {
        $s1='<a class="btn" href="'.$url.'" ';
        $s1.=' title="编辑"><i class="fa fa-edit"></i></a>';
        $s2='update';
    } else if ($command == '批删除') {
        $s1='<a style="display:none;" id="j-delete" class="btn"';
        $s1.=' href="javascript:;" onclick="';
        $s1.="we.dele(we.checkval('.check-item input:checked'), deleteUrl)";
        $s1.=';"><i class="fa fa-trash-o"></i>'.$title.'</a>';
    } else if ($command == '删除') {
        $s1='<a class="btn" href="javascript:;" onclick="we.dele(';
        $s1.=$url.', deleteUrl);" title="删除">';
        $s1.='<i class="fa fa-trash-o"></i></a>';
    }
    else if ($command == '审核') {
        $s1='<a class="btn" href="'.$url.'" ';
        $s1.=' title="审核"><i class="fa fa-edit"></i></a>';
        $s2='shenhe';
    }
    else if ($command == '详情') {
        $s1='<a class="btn" href="'.$url.'" ';
        $s1.=' title="详情"><i class="fa fa-edit"></i></a>';
        $s2='update';
    }
    if(!isset($role_tmp[$mname][$ac][$s2])){ 
      //  put_msg($role_tmp);
        $s1="";
    }
    return $s1;
 }
 
 
 function get_form_list($submit='=='){
    return array(
            'id' => 'active-form',
            'enableClientValidation' => true,
            'clientOptions' => array(
                'validateOnSubmit' => true,
                'afterValidate' => 'js:function(form,data,hasError){
                    if(!hasError||(submitType=="'.$submit.'")){
                        we.overlay("show");
                        $.ajax({
                            type:"post",
                            url:form.attr("action"),
                            data:form.serialize()+"&submitType="+submitType,
                            dataType:"json",
                            success:function(d){
                                if(d.status==1){
                                    we.success(d.msg, d.redirect);
                                }else{
                                    we.error(d.msg, d.redirect);
                                }
                            }
                        });
                    }else{
                        var html="";
                        var items = [];
                        for(item in data){
                            items.push(item);
                            html+="<p>"+data[item][0]+"</p>";
                        }
                        we.msg("minus", html);
                        var $item = $("#"+items[0]);
                        $item.focus();
                        $(window).scrollTop($item.offset().top-10);
                    }
                }',
            ),
        );
  }

 function select2_html($parray,$data){
  $pids=array();//$pidstr.split(",");
  $pnames=array();//$pnames.split(",");
  $i=0;
  $cr='';
  foreach($parray as $k => $v){
    $pnames[$i]=$v;
    $pids[$i]=$k;
    $i+=1;
    }
  for($j=$i;$j<4;$j++){
    $pnames[$j]='';
    $pids[$j]='a2a2b'+$j;
    }
  for($j=0;$j<4;$j++){
    check_request($pids[$j],0);
   // $pvars[$j]=$_REQUEST[$pids[$j]]);
    }
  $html='<script type="text/javascript">'.$cr;
  $html.='$(function(){'.$cr;
  $html.=' function objInit(obj){';
  $html.="  return $(obj).html('<option>请选择</option>');".$cr;
  $html.=" }".$cr;
  $html.="  var arrData=".json_encode($data).";".$cr;
  $html.=" $.each(arrData,function(pF){".$cr;
  $html.="   $('#".$pids[0]."').append('<option>'+pF+'</option>');".$cr;
  $html.=" });".$cr;
  $html.=" $('#".$pids[0]."').change(function(){".$cr;
  $html.="  objInit('#".$pids[1]."');".$cr;
  $html.="  objInit('#".$pids[2]."');".$cr;
  $html.="  $.each(arrData,function(pF,pS){".$cr;
  $html.="   if($('#".$pids[0]." option:selected').text()==pF){".$cr;
  $html.="        $.each(pS,function(pT,pC){".$cr;
  $html.="          $('#".$pids[1]."').append('<option>'+pT+'</option>');".$cr;
  $html.="      });";
  $html.="       $('#".$pids[1]."').change(function(){".$cr;
  $html.="            objInit('#".$pids[2]."');".$cr;
  $html.="            $.each(pS,function(pT,pC){".$cr;
  $html.="               if($('#".$pids[1]." option:selected').text()==pT){".$cr;
  $html.='                 $.each(pC.split(","),function(){'.$cr;
  $html.="                   $('#".$pids[2]."').append('<option>'+this+'</option>');".$cr;
  $html.="                })".$cr;
  $html.="             }".$cr;
  $html.="          })".$cr;
  $html.="     });";
  $html.="  }";
  $html.=" })";
  $html.="});";
  $html.="});";
  for($i=0;$i<3;$i++){
    //if(!empty($pnames[$i]))
    // $html.="$('#".$pids[1]."').text('".$_REQUEST[$pids[$i]]."');";
    }
//  $html.="console.log(123);";//测试使用
  $html.="</script>";
  for($i=0;$i<3;$i++){
    $v='请选择';
    if(!empty($_REQUEST[$pids[$i]])) $v=$_REQUEST[$pids[$i]];
    if(!empty($pnames[$i])){
      $html.=$pnames[$i].'<select id="'.$pids[$i].'" name="'.$pids[$i].'">';
      $html.='<option>'.$v.'</option></select>';
     }
    }
    return $html; 
  }

   function get_idn($sid){
     $rs=0;
     if(indexof($sid,':')>0){
      $dm=explode(':',$sid);
      $rs=$dm[1];
     }
     return $rs; 
   }

  function get_ip(){
    return real_ip(); 
  }

  function real_ip()
  {
    static $realip = NULL;

    if ($realip !== NULL)
    {
        return $realip;
    }

    if (isset($_SERVER))
    {
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        {
            $arr = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);

            /* 取X-Forwarded-For中第一个非unknown的有效IP字符串 */
            foreach ($arr AS $ip)
            {
                $ip = trim($ip);

                if ($ip != 'unknown')
                {
                    $realip = $ip;
                    break;
                }
            }
        }
        elseif (isset($_SERVER['HTTP_CLIENT_IP']))
        {
            $realip = $_SERVER['HTTP_CLIENT_IP'];
        }
        else
        {
        
            $realip = (isset($_SERVER['REMOTE_ADDR'])) ? $_SERVER['REMOTE_ADDR'] : '0.0.0.0';
       
        }
    }
    else
    {
        if (getenv('HTTP_X_FORWARDED_FOR'))
        {
            $realip = getenv('HTTP_X_FORWARDED_FOR');
        }
        elseif (getenv('HTTP_CLIENT_IP'))
        {
            $realip = getenv('HTTP_CLIENT_IP');
        }
        else
        {
            $realip = getenv('REMOTE_ADDR');
        }
    }

    preg_match("/[\d\.]{7,15}/", $realip, $onlineip);
    $realip = !empty($onlineip[0]) ? $onlineip[0] : '0.0.0.0';

    return $realip;
}

// 剔除获取HTML文件不要的标签，
// $tags：数组形式，'标签名'
// $str：获取的HTML内容
function strip_html_tags($tags,$str){
    $html = array();
    foreach($tags as $tag){
        $html[]='/<'.$tag.'.*?>[\s|\S]*?<\/'.$tag.'>/';
        $html[]='/<'.$tag.'.*?>/';
    }
    $data = preg_replace($html,'',$str);
    return $data;
}

function Yearsc(){

  return  Semester::model()->getYear();
}
 
 function Termsc(){
  return  Semester::model()->getTerm();
}   
function Termbm(){
  return  Semester::model()->getTerm();
}  

