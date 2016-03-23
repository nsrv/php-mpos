  <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-info fa-fw"></i> よくあるご質問（FAQ）
        </div>
        <div class="panel-body">
          <ul>
          <li><b>Q: どのような支払いシステムを利用していますか？</b></li>
          &nbsp;<b>A:</b> 当プールでは次の支払いを行っています。<br>
          {if $GLOBAL.config.payout_system == 'prop'}
          <br>
          <b>Proportional (Prop)</b> - The block reward is distributed among miners in proportion to the number of shares they submitted in a round. The expected reward per share depends on the number of shares already submitted in the round.
          {/if}
          {if $GLOBAL.config.payout_system == 'pplns'}
          <br>
          <b>Pay Per Last N Shares (PPLNS)</b> - Block rewards are distributed among the last shares, disregarding round boundaries. In the accurate implementation, the number of shares is deter- mined so that their total will be a specified quantity of score (where the score of a share is the inverse of the difficulty). Most pools use a naive implementation based on a fixed number of shares or a fixed multiple of the difficulty. The share-variance can be reduced at the cost of increased maturity time, but there is no way to decrease the long-term pool-variance.
          {/if}
          {if $GLOBAL.config.payout_system == 'pps'}
          <br>
          <b>Pay Per Share (PPS)</b> - Each share receives a fixed reward known in advance. This is the ultimate low- variance, low-maturity simple method, but has the highest risk for the operator, and hence lower expected returns than other methods and risk of collapse if not managed properly.
          {/if}
          <br><br>
          <li><b>Q: 孤立（無効）ブロックとは何ですか？</b></li>
          &nbsp;<b>A:</b> ブロックにより生成されたMONAがすぐに利用できなくなる場合があります。プールから転送を行う前にネットワークによって検証される必要があります。通常のコインでは１２０ブロックの検証が行われる必要があります。（当プールの場合、６０ブロックの検証で払い出し可能となります。）<br>
          検証で無効なブロックとなってしまった場合（チェーンが続かなかった場合）は孤立ブロックとなり検証済み残高に加算されません。
          <br><br>
          <li><b>Q: 推定ペイアウトとは何ですか？</b></li>
          &nbsp;<b>A:</b> 推定ペイアウト（estimated payout）とは、現時点でブロックが発見された場合のあなたの配当値です。これは、ラウンドのために受け取ったシェアに基づいた推定値です。
          <br><br>
          {if $GLOBAL.config.payout_system != 'prop'}
          <li><b>Q: プールの分散とは何ですか？</b></li>
          &nbsp;<b>A:</b> プールが小さすぎることによって引き起こされる分散です。高いプール分散を利用する大規模プールへの問題はありません。
          <br><br>
          {/if}
          <li><b>Q: プールへの接続に問題があります。</b></li>
          &nbsp;<b>A:</b> <a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted">採掘の始め方</a>をもう一度ご確認ください。プールの障害の可能性がある場合はプールのサポートへお問い合わせください。
          <br><br>
          <li><b>Q: 採掘ソフトの設定方法を教えてもらえますか？</b></li>
          &nbsp;<b>A:</b> 申し訳ありませんが、当社では採掘環境やクライアントソフトの設定についてのサポートは行っていません。<br>
          採掘の始め方のページをご確認いただいて解決しない場合、Twitterや掲示板などで質問されることをお勧めいたします。
          <br><br>
          <li><b>Q: 複数のユーザーアカウントを持つことは可能ですか？</b></li>
          &nbsp;<b>A:</b> 現在当プールではユーザー管理上の都合により、１個人または法人につき１IDまでとさせていただいております。<br>
          複数アカウントのご利用が発覚した場合、アカウント停止等の処置をとらせていただくことがありますのでご了承ください。
          <br><br>
          <li><b>Q: ブロックボーナスについて教えてもらえますか？</b></li>
          &nbsp;<b>A:</b> 現時点で、プールの検証へのご協力をいただいたことへのお礼として常時１％のプールボーナスを実施しています。<br>
          今のところ終了期限はなく、できる限り継続して行っていきたいと思います。
          <br><br>
          <li><b>Q: ユーザー登録ができません。</b></li>
          &nbsp;<b>A:</b> 現在新規ユーザー登録を制限しております。新規でこのプールで採掘を始めたいという方は、<a href="{$smarty.server.SCRIPT_NAME}?page=contactform">お問い合わせ</a>フォームよりご連絡ください。<br>
          当プールの目的（負荷の検証など）から継続的に安定したハッシュレートで採掘いただける方を優先的に登録させていただいております。<br>
          ご協力いただける方は、メールにその旨を記載いただけると優先的に登録させていただく場合がございます。
          <br><br>
          <li><b>Q: クラウドマイニングは利用できますが？</b></li>
          &nbsp;<b>A:</b> 当プールではNiceHash等のクラウドマイニングに対応しております。<br>
          ただし、Difficultyなどの設定により必ずしも良好な結果が出るとは限りません。<br>
          クラウドマイニングを行う場合、ASICpool様などのプールのご利用をお勧めいたします。
          <br><br>
          <li><b>Q: 招待機能について教えてください。</b></li>
          &nbsp;<b>A:</b> 当プールにアカウントを持っているユーザー様は、招待機能を利用してご友人などを招待することが可能です。<br>
          招待をすると招待メールが送られ、メールのURLからすぐに登録可能になります。<br>
          但し招待機能の利用は成否にかかわらずユーザー様一人につき２回までとなっております。<br>
          また、招待したユーザー様は招待されたユーザー様がアカウント停止等になった場合、同時にアカウント停止となります。
          <br><br><br>
          <b>・ここに掲載されている以外のことでご不明な点などある場合は、お気軽にプールサポートまでお問い合わせください。</b>
          </ul>
        </div>
        <div class="panel-footer">
          <h6>・This Pool is running <a href="https://github.com/TheSerapher/php-mpos">MPOS</a> project code. This frontend was  created by TheSerapher aka Sebastian Grewe. The operation of the pool is soley at the hand of your trusted pool operator.<br>
          ・このプールでは、<a href="https://github.com/TheSerapher/php-mpos">MPOSプロジェクト</a>のコードを実行しています。フロントエンドはTheSerapher（Sebastian Grewe）により作成されました。<br>
          ・プールの管理は、プールオペレータによって行われています。このプールに関する不具合などは当プールのサポートにお問い合わせください。
          </h6>
        </div>
      </div>
    </div>
  </div>

