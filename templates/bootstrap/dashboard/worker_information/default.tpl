{if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-desktop fa-fw"></i> ワーカー情報</h4>
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-bordered table-hover table-striped"> 
         <thead>
          <tr>
            <th>採掘アカウント名</th>
            <th>採掘速度</th>
            <th>難易度</th>
          </tr>
          </thead>
          <tbody id="b-workers">
            <td colspan="3" class="text-center">有効な採掘アカウント情報がありません。</td>
          </tbody>
        </table>
      </div>
    </div>
  </div>
{/if}
