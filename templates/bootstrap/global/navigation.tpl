       <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="{$smarty.server.SCRIPT_NAME}"><i class="fa fa-home fa-fw"></i> ホーム</a>
                    </li>
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                    <li>
                        <a href="{$smarty.server.SCRIPT_NAME}?page=dashboard"><i class="fa fa-dashboard fa-fw"></i> ダッシュボード</a>
                    </li>

                    <li {if $smarty.get.page|default:"0" eq "account"}class="active"{/if}>
                        <a href="#"><i class="fa fa-user-md fa-fw"></i> アカウント情報<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit"><i class="fa fa-edit fa-fw"></i> アカウントの管理</a></li>
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers"><i class="fa fa-desktop fa-fw"></i> ワーカーの管理</a></li>
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions"><i class="fa fa-credit-card fa-fw"></i> トランザクション</a></li>
                          {if !$GLOBAL.config.disable_transactionsummary}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings"><i class="fa fa-money fa-fw"></i> 収益</a></li>{/if}
                          {if !$GLOBAL.config.disable_notifications}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications"><i class="fa fa-bullhorn fa-fw"></i> 通知</a></li>{/if}
                          {if !$GLOBAL.config.disable_invitations}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations"><i class="fa fa-users fa-fw"></i> 招待状を送信</a></li>{/if}
                          {if !$GLOBAL.acl.qrcode}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode"><i class="fa fa-qrcode fa-fw"></i> QRコードを表示</a></li>{/if}
                        </ul>
                        <!-- /.nav-second-level　ナビゲーションセカンドレベル終了 -->
                    </li>
                    {/if}
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
                    <li {if $smarty.get.page|default:"0" eq "admin"}class="active"{/if}>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i> 管理用パネル<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
<<<<<<< HEAD
                          <li {if $smarty.get.action|default:"0" eq "dashboard" || $smarty.get.action|default:"0" eq "monitoring" || $smarty.get.action|default:"0" eq "settings"}class="active"{/if}>
                            <a href="#"><i class="fa fa-linux fa-fw"></i> システム <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=dashboard"><i class="fa fa-dashboard fa-fw"></i> ダッシュボード</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=monitoring"><i class="fa fa-bell-o fa-fw"></i> モニタリング</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=settings"><i class="fa fa-gears fa-fw"></i> 設定</a></li>
=======
                          <li {if $smarty.get.action|default:"0" eq "dashboard" || $smarty.get.action|default:"0" eq "monitoring" || $smarty.get.action|default:"0" eq "settings" || $smarty.get.action|default:"0" eq "setup"}class="active"{/if}>
                            <a href="#"><i class="fa fa-linux fa-fw"></i> System <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=setup"><i class="fa fa-book fa-fw"></i> Setup</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=dashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=monitoring"><i class="fa fa-bell-o fa-fw"></i> Monitoring</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=settings"><i class="fa fa-gears fa-fw"></i> Settings</a></li>
>>>>>>> b7b45eb580dfd7f683540b519a66e14d3fe8321d
                            </ul>
                          </li>
                          <li {if $smarty.get.action|default:"0" eq "wallet" || $smarty.get.action|default:"0" eq "transactions"}class="active"{/if}>
                            <a href="#"><i class="fa fa-usd fa-fw"></i> 資金 <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=wallet"><i class="fa fa-money fa-fw"></i> ウォレット情報</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=transactions"><i class="fa fa-tasks fa-fw"></i> トランザクション</a></li>
                            </ul>
                          </li>
                          <li {if $smarty.get.action|default:"0" eq "news" || $smarty.get.action|default:"0" eq "newsletter"}class="active"{/if}>
                            <a href="#"><i class="fa fa-info fa-fw"></i> ニュース <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=news"><i class="fa fa-list-alt fa-fw"></i> トップページのニュース</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=newsletter"><i class="fa fa-list-alt fa-fw"></i> ニュースレターの送信</a></li>
                            </ul>
                          </li>
                          <li {if $smarty.get.action|default:"0" eq "user" || $smarty.get.action|default:"0" eq "reports" || $smarty.get.action|default:"0" eq "registrations" || $smarty.get.action|default:"0" eq "invitations" || $smarty.get.action|default:"0" eq "poolworkers"}class="active"{/if}>
                            <a href="#"><i class="fa fa-users fa-fw"></i> ユーザーの管理 <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=user"><i class="fa fa-user fa-fw"></i> ユーザー情報</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=reports"><i class="fa fa-list-ol fa-fw"></i> レポート</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=registrations"><i class="fa fa-pencil-square-o fa-fw"></i> 登録状況</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=invitations"><i class="fa fa-users fa-fw"></i> 招待メール</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=poolworkers"><i class="fa fa-desktop fa-fw"></i> プールワーカー</a></li>
                            </ul>
                          </li>
                        </ul>
                        <!-- /.nav-second-level　ナビゲーションセカンドレベル終了 -->
                    </li>
                    {/if}
                    <li {if $smarty.get.page|default:"0" eq "statistics"}class="active"{/if}>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 統計情報<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          {acl_check page='statistics' action='pool' name='<i class="fa fa-align-left fa-fw"></i> プール' acl=$GLOBAL.acl.pool.statistics fallback='page=statistics'}
                          {acl_check page='statistics' action='blocks' name='<i class="fa fa-th-large fa-fw"></i> ブロック' acl=$GLOBAL.acl.block.statistics}
                          {acl_check page='statistics' action='round' name='<i class="fa fa-refresh fa-fw"></i> ラウンド' acl=$GLOBAL.acl.round.statistics}
                          {acl_check page='statistics' action='blockfinder' name='<i class="fa fa-search fa-fw"></i> ブロックの発見者' acl=$GLOBAL.acl.blockfinder.statistics}
                          {acl_check page='statistics' action='uptime' name='<i class="fa fa-clock-o fa-fw"></i> 稼働率' acl=$GLOBAL.acl.uptime.statistics}
                          {acl_check page='statistics' action='graphs' name='<i class="fa fa-signal fa-fw"></i> グラフ' acl=$GLOBAL.acl.graphs.statistics}
                        </ul>
                        <!-- /.nav-second-level　ナビゲーションセカンドレベル終了 -->
                    </li>
                    <li {if $smarty.get.page|default:"0" eq "gettingstarted" || $smarty.get.page|default:"0" eq "about"}class="active"{/if}>
                        <a href="#"><i class="fa fa-question fa-fw"></i> ヘルプ<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted"><i class="fa fa-question fa-fw"></i> 採掘の始め方</a></li>
                          {acl_check page='about' action='pool' name='<i class="fa fa-info fa-fw"></i> よくある質問（FAQ）' acl=$GLOBAL.acl.about.page}
                          {acl_check page='about' action='chat' name='<i class="fa fa-comments-o fa-fw"></i> Web Chat' acl=$GLOBAL.acl.chat.page}
                          {acl_check page='about' action='moot' name='<i class="fa fa-ticket fa-fw"></i> Forum' acl=$GLOBAL.acl.moot.forum}
                        </ul>
                        <!-- /.nav-second-level　ナビゲーションセカンドレベル終了 -->
                    </li>
                    <li {if $smarty.get.page|default:"0" eq "register" || $smarty.get.page|default:"0" eq "login" || $smarty.get.page|default:"0" eq "logout" || $smarty.get.page|default:"0" eq "tac" || $smarty.get.page|default:"0" eq "contactform"}class="active"{/if}>
                        <a href="#"><i class="fa fa-tasks fa-fw"></i> その他<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=logout"><i class="fa fa-sign-out fa-fw"></i> ログアウト</a></li>
                          {else}
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=login"><i class="fa fa-sign-in fa-fw"></i> ログイン</a></li>
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=register"><i class="fa fa-pencil fa-fw"></i> 新規登録</a></li>
                          {/if}
                          
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=tac"><i class="fa fa-book fa-fw"></i> 利用規約を表示</a></li>
                          {acl_check page='contactform' action='' name='<i class="fa fa-envelope fa-fw"></i> メールを送信' acl=$GLOBAL.acl.contactform}
                        </ul>
                        <!-- /.nav-second-level　ナビゲーションセカンドレベル終了 -->
                    </li>
					<li>
                    <center>
					<script type="text/javascript" src="https://seal.verisign.com/getseal?host_name=www.nsrv.co.jp&amp;size=L&amp;use_flash=YES&amp;use_transparent=YES&amp;lang=ja"></script>
                    </center>
                    </li>
                </ul>
                <!-- /#side-menu　サイドメニュー終了 -->
            </div>
            <!-- /.sidebar-collapse -->
        </nav>
        <!-- /.navbar-static-side -->
