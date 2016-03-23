<script>
  var zxcvbnPath = "{$PATH}/js/zxcvbn/zxcvbn.js";
</script>
<script type="text/javascript" src="{$PATH}/js/pwcheck.js"></script>

<div class="row">
  <div class="col-lg-5">
    <form class="panel panel-info" method="post" role="form">
      <input type="hidden" name="page" value="{$smarty.request.page|escape}">
      {if $smarty.request.token|default:""}
      <input type="hidden" name="token" value="{$smarty.request.token|escape}">
      {/if}
      <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}">
      <input type="hidden" name="action" value="register">
      <div class="panel-heading">
        <i class="fa fa-edit fa-fw"></i> アカウントの新規作成
      </div>
      <div class="panel-body">
        <div class="form-group">
          <label>ユーザー名</label>
          <div class="input-group  input-group-sm">
            <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
            <input type="text" class="form-control" name="username" placeholder="ユーザー名（半角英数字）" value="{$smarty.post.username|escape|default:""}" size="15" maxlength="20" required>
          </div>
          {if $GLOBAL.coinaddresscheck|default:"1"}
          <label>ウォレットアドレス</label>
          <div class="input-group input-group-sm">
            <span class="input-group-addon"><i class="fa fa-money fa-fw"></i></span>
            <input type="text" name="coinaddress" placeholder="出金先のウォレットのアドレス" class="form-control" value="{$smarty.post.coinaddress|escape|default:""}" size="15" required>
          </div>
          {/if}
          <label>メールアドレス</label>
          <div class="input-group input-group-sm">
            <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
            <input type="text" name="email1" placeholder="Eメールアドレス" class="form-control" value="{$smarty.post.email1|escape|default:""}" size="15" required>
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
            <input type="text" class="form-control" name="email2" placeholder="確認のために再入力" value="{$smarty.post.email2|escape|default:""}" size="15" required>
          </div>
          
          <label>パスワード</label> (<span id="pw_strength">Strength</span>)
          <div class="input-group input-group-sm">
            <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
            <input type="password" class="form-control" name="password" placeholder="パスワード" value="" size="15" maxlength="100" id="pw_field" required>
          </div>
          <span id="pw_match"></span>
          <div class="input-group input-group-sm">
            <span class="input-group-addon" id="pw_match"><i class="fa fa-key fa-fw"></i></span>
            <input type="password" class="form-control" name="password2" placeholder="確認のために再入力" value="" size="15" maxlength="100" id="pw_field2" required>
          </div>

          <label>認証コード（PIN）</label>
          <font color="#FF0000" size="1">忘れないようにご注意ください。</font>
          <div class="input-group input-group-sm">
            <span class="input-group-addon"><i class="fa fa-shield fa-fw"></i></span>
            <input type="password" class="form-control" name="pin" placeholder="数字4文字" value="" size="4" maxlength="4" required>   
          </div>
          <div class="input-group input-group-sm">
            <label>
              <input type="checkbox" value="1" name="tac" id="tac">　　<a data-toggle="modal" data-target="#TAC">利用規約</a>を読み同意します。
            </label>
          </div>
        </div>
        <center>{nocache}{$RECAPTCHA|default:"" nofilter}{/nocache}</center>
      </div>
      <div class="panel-footer">
        <input type="submit" value="新規登録" class="btn btn-success btn-sm">
      </div>
    </form>
  </div>
</div>

<div class="modal fade" id="TAC" tabindex="-1" role="dialog" aria-labelledby="TACLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="TACLabel">利用規約</h4>
        </div>
        <div class="modal-body">
          {include file="tac/content.tpl"}
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">戻る</button>
        </div>
      </div>
    </div>
  </div>
</div>
