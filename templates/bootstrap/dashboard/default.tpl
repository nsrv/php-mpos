{if $smarty.session.AUTHENTICATED|default}
<script src="{$PATH}/js/plugins/date.format.js"></script>
<script src="{$PATH}/js/plugins/soundjs-0.5.2.min.js"></script>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-align-left fa-fw"></i> 概要</h4>
      </div>
      <div class="panel-body text-center">
        <div class="row">
          <div class="col-lg-12">
          {* Load our payout system so we can load some payout specific templates *}
          {assign var=PAYOUT_SYSTEM value=$GLOBAL.config.payout_system}
          {include file="dashboard/overview/default.tpl"}
          {include file="dashboard/round_statistics/$PAYOUT_SYSTEM/default.tpl"}
          {include file="dashboard/account_data/default.tpl"}
          {if !$DISABLED_API}
          {include file="dashboard/worker_information/default.tpl"}
          {/if}
          {include file="dashboard/blocks/default.tpl"}
          </div>
        </div>
      </div>
      <div class="panel-footer">
        <h6>・数値は{$GLOBAL.config.statistics_ajax_refresh_interval|default:"10"} 秒ごとに更新されます。<br> ・ワーカー情報とアカウント情報は {$GLOBAL.config.statistics_ajax_long_refresh_interval|default:"10"} 秒ごとの更新です。<br>・過去 {$INTERVAL|default:"5"} 分間で送られてきたシェアレートに基づくハッシュレートを表示しています。</h6>
      </div>
    </div>
  </div>
</div>
  {* Include our JS libraries, we allow a live updating JS and a static one *}
  {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  {include file="dashboard/js/api.tpl"}
  {else}
  {include file="dashboard/js/static.tpl"}
  {/if}
{/if}
