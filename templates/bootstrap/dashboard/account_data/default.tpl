  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-user-md fa-fw"></i> アカウント情報</h4>
      </div>
      <div class="panel-body no-padding">
        <table class="table table-bordered table-hover table-striped">
          <tr>
            <td colspan="2">
    {if $GLOBAL.userdata.no_fees}
            You are mining without any pool fees applied and
    {else if $GLOBAL.fees > 0}
            採掘したMONAの<font color="orange">{if $GLOBAL.fees < 0.0001}{$GLOBAL.fees|escape|number_format:"8"}{else}{$GLOBAL.fees|escape}{/if}%</font>の手数料が引かれます。
    {else}
            プールの利用手数料は無料です。
    {/if}
    {if $GLOBAL.userdata.donate_percent > 0}
            現在、<font color="green">{$GLOBAL.userdata.donate_percent|escape}%</font>の<a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit">寄付</a>をしています。
    {else}
            <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit">寄付</a>はしていません。
    {/if}
            </td>
          </tr>
        </table>
        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr><th colspan="2">{$GLOBAL.config.currency} アカウントの残高</th></tr>
          </thead>
          <tbody>
            <tr>
              <th>検証済み残高</th>
              <th>
                <span class="label label-success pull-right bigfont" id="b-confirmed">{$GLOBAL.userdata.balance.confirmed|number_format:"6"}&nbsp;{$GLOBAL.config.currency}</span>
              </th>
            </tr>
            <tr>
              <th>未検証の残高</th>
              <th>
                <span class="label label-warning pull-right bigfont" id="b-unconfirmed">{$GLOBAL.userdata.balance.unconfirmed|number_format:"6"}&nbsp;{$GLOBAL.config.currency}</span>
              </th>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
