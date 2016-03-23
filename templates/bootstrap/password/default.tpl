<div class="row">
  <form class="col-md-4" role="form" method="POST">
    <input type="hidden" name="page" value="password">
    <input type="hidden" name="action" value="reset">
    <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">パスワードのリセット</h3>
      </div>
      <div class="panel-body">
        <fieldset>
         <p>登録済みのメールアドレスにパスワード変更URLを送信します。</p>
          <div class="input-group margin-bottom-sm">
            <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
            <input class="form-control" placeholder="ユーザー名またはメールアドレス" name="username" type="text" maxlength="100" autofocus required>
          </div>
        </fieldset>
      </div>
      <div class="panel-footer" style="margin-top: 10px;">
        <input type="submit" class="btn btn-success btn-sm" value="リセットメールを送信" >
      </div>
    </div>
  </form>
</div>
