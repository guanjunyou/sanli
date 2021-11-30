<?php

class IndexController extends BaseController
{

  public $layout = false;


  public function actionIndex()
  {
    if (Yii::app()->session['admin_id'] == null)
      $this->login_form();
    else
      $this->render('index');
  }

  public function actionLogin()
  {
    $this->login_form();
  }

  public function actionLogout()
  {
    
    Yii::app()->session['admin_id'] = null;
    $this->redirect('index.php');
  }

  function login_form()
  {
    Yii::app()->session['admin_id'] = null;
    $model = new Admin('create');
    $data = array();
    $data['model'] = $model;
    $this->render('login', $data);
  }

  public function actionCheckuser()
  {
    if (isset($_REQUEST['ACCOUNT'])) {
      $account = $_REQUEST['ACCOUNT'];
    }
    $data = array();
    $model = Admin::model()->find("account=?", [$account]);
    $data['account'] = 0;
    if ($model == null) {
      $data['msg'] = "账号不存在";
    } else if ($model->password == $_REQUEST['PASSWORD']) {
      $data['account'] = $model->account;
      Yii::app()->session['name'] = $model->name;
      Yii::app()->session['admin_id'] = $model->id;
      $data['msg'] = "登录成功";
    } else {
      $data['msg'] = "密码错误";
    }

    echo CJSON::encode($data);
  }
}
