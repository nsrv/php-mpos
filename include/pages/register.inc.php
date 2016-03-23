<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

if ($setting->getValue('lock_registration') && $setting->getValue('disable_invitations')) {
  $_SESSION['POPUP'][] = array('CONTENT' => 'アカウントの新規登録が無効になっています。', 'TYPE' => 'alert alert-danger');
  $smarty->assign("CONTENT", "disabled.tpl");
} else if ($setting->getValue('lock_registration') && !$setting->getValue('disable_invitations') && !isset($_GET['token'])) {
  $_SESSION['POPUP'][] = array('CONTENT' => '招待されたユーザー様のみが登録可能です。', 'TYPE' => 'alert alert-danger');
  $smarty->assign("CONTENT", "disabled.tpl");
} else {
  if ($setting->getValue('recaptcha_enabled') && $setting->getValue('recaptcha_enabled_registrations')) {
    require_once(INCLUDE_DIR . '/lib/recaptchalib.php');
    $smarty->assign("RECAPTCHA", recaptcha_get_html($setting->getValue('recaptcha_public_key'), null, true));
  }
  // Load news entries for Desktop site and unauthenticated users
  $smarty->assign("CONTENT", "default.tpl");
}
