<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

if ($user->isAuthenticated()) {


  if (!$coin_address->getCoinAddress($_SESSION['USERDATA']['id']) AND $setting->getValue('disable_worker_edit')) {
    $_SESSION['POPUP'][] = array('CONTENT' => '払い出しアドレスが設定されていません。', 'TYPE' => 'alert alert-danger');
    $_SESSION['POPUP'][] = array('CONTENT' => '有効な払い出しアドレスがユーザー設定で設定されないと採掘アカウントを追加できません。', 'TYPE' => 'alert alert-danger');
    $smarty->assign('CONTENT', 'disabled.tpl');
  } else {
    switch (@$_REQUEST['do']) {
    case 'delete':
      if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
        if ($worker->deleteWorker($_SESSION['USERDATA']['id'], $_GET['id'])) {
          $_SESSION['POPUP'][] = array('CONTENT' => '採掘アカウントを削除しました。', 'TYPE' => 'alert alert-success');
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => $worker->getError(), 'TYPE' => 'alert alert-danger');
        }
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
      }
      break;

    case 'add':
      if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
        if ($worker->addWorker($_SESSION['USERDATA']['id'], $_POST['username'], $_POST['password'])) {
          $_SESSION['POPUP'][] = array('CONTENT' => '採掘アカウントを追加しました。', 'TYPE' => 'alert alert-success');
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => $worker->getError(), 'TYPE' => 'alert alert-danger');
        }
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
      }
      break;

    case 'update':
      if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
        if ($worker->updateWorkers($_SESSION['USERDATA']['id'], @$_POST['data'])) {
          $_SESSION['POPUP'][] = array('CONTENT' => '採掘アカウントを更新しました。', 'TYPE' => 'alert alert-success');
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => $worker->getError(), 'TYPE' => 'alert alert-danger');
        }
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
      }
      break;
    }

    $smarty->assign('DISABLE_IDLEWORKERNOTIFICATIONS', $setting->getValue('notifications_disable_idle_worker'));
    $aWorkers = $worker->getWorkers($_SESSION['USERDATA']['id']);
    if (!$aWorkers) $_SESSION['POPUP'][] = array('CONTENT' => '採掘アカウントが設定されていません。', 'TYPE' => 'alert alert-warning');

    $smarty->assign('WORKERS', $aWorkers);
    $smarty->assign('CONTENT', 'default.tpl');
  }
}
