 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> 採掘の始め方
        </div>
        <div class="panel-body">
        
    <p>１．<strong>プールにアカウントを作成</strong></p>
      <ul>
        <li>アカウントを<a href="{$smarty.server.SCRIPT_NAME}?page=register">新規登録</a>または既存のアカウントでログインします。</li>
        <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">ワーカーの設定</a>から採掘アカウントを追加してください。</li>
      </ul>
    </li>
    <p>２．<strong>マイニングのソフトウエアをダウンロード</strong></p>
      <ul>
        {if $GLOBAL.config.algorithm == 'sha256d'}
        <li>CPU採掘（Windowsの場合）：<a href="http://ck.kolivas.org/apps/cgminer/cgminer-4.2.2-windows.zip" target="_blank">Windows用CGMinerをダウンロード</a></li>
        <li>CPU採掘（Linuxの場合）：<a href="http://ck.kolivas.org/apps/cgminer/cgminer-4.2.2.tar.bz2" target="_blank">Linux用CGMinerをダウンロード</a></li>
	{/if}
	{if $GLOBAL.config.algorithm == 'scrypt'}
	<li>IntelまたはAMDのGPUで採掘（Windowsの場合）： <a href="https://mega.co.nz/#!iQhlGIxa!mzKOfLY6TpOfvPvWE6JFlWdRgHEoshzm99f1hd3ZdRw" target="_blank">Windows用CGMiner(3.7.2)をダウンロード</a></li>	
	<li>IntelまたはAMDのGPUで採掘（Linuxの場合）： <a href="http://ck.kolivas.org/apps/cgminer/3.7/cgminer-3.7.0.tar.bz2" target="_blank">Linux用CGMiner(3.7.2)をダウンロード</a></li>	
	<li>NVIDIAのGPUで採掘： <a href="https://bitcointalk.org/index.php?topic=167229.0" target="_blank">CudaMinerをダウンロード（Windows専用）</a></li>
	{/if}
	<li>Intel/ATI/AMDのGPUで採掘（LinuxまたはWindows）： <a href="http://bfgminer.org" target="_blank">BFG Minerをダウンロード</a></li>
    <li>CPUで採掘（Windows/Linux/Mac）： <a href="https://bitcointalk.org/index.php?topic=55038.msg654850#msg654850" target="_blank"> CPU Minerをダウンロード</a></li>
    <br><li>当サーバーよりダウンロードする場合、は以下のリンクを利用してください。</li>
    	<ul><br>
        	・CG Miner 3.7.2　<a href="https://www.nsrv.co.jp/pool/miner/cgminer-3.7.2-windows.zip">Windows</a>　<a href="https://www.nsrv.co.jp/pool/miner/cgminer-3.7.2.zip">ソースコード</a><br>
            ・BFG Miner 4.8.0　<a href="https://www.nsrv.co.jp/pool/miner/bfgminer-4.8.0-win32.zip">Windows-32bit</a>　<a href="https://www.nsrv.co.jp/pool/miner/bfgminer-4.8.0-win64.zip">Windows-64bit</a>　<a href="https://www.nsrv.co.jp/pool/miner/bfgminer-4.8.0.zip">ソースコード</a><br>
            ・CUDA Miner 2014-02-28　<a href="https://www.nsrv.co.jp/pool/miner/cudaminer-2014-02-28.zip">Windows</a>　<a href="https://www.nsrv.co.jp/pool/miner/CudaMiner-master.zip">ソースコード</a><br>
            ・CPU Miner 2.4　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4-win32.zip">Windows-32bit</a>　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4-win64.zip">Windows-64bit</a>　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4-linux-x86.tar.gz">Linux-x86</a>　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4-linux-x86_64.tar.gz">Linux-x86_64</a>　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4-osx32.zip">Mac-32bit</a>　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4-osx64.zip">Mac-64bit</a>　<a href="https://www.nsrv.co.jp/pool/miner/pooler-cpuminer-2.4.tar.gz">ソースコード</a><br>
        </ul>
        <br>
        <font color="red">※ご利用のブラウザ・ウイルス対策ソフトによっては、CPUMinerがウイルスとして検出される可能性があります。</font>
      </ul><br>
    </li>
    <p>３．<strong>採掘機の設定</strong></p>
    <ul>
      <p>Linuxをご利用の場合、次ののコマンド例を参考にコンソールに入力してください。：</p>
      <li>CGMiner の場合</li>
      <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>{if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}[ユーザー名]{/if}</em>.<em><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">[採掘アカウント名]</a></em> -p <em>[採掘アカウントのパスワード]</em></pre>
      <li>BFGMiner の場合</li>
      <pre>./bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u {if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}[ユーザー名]{/if}</em>.<em><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">[採掘アカウント名]</a></em> -p <em>[採掘アカウントのパスワード]</em></pre>
      <br />
	  <p> Windowsで採掘をする場合、採掘の開始用にバッチファイルを利用すると便利です。</p><p>メモ帳を開き、下記の設定を参考にコピーし、任意のフォルダに「.bat」の拡張子をつけて保存します。：</p>
      <li>CGMiner の場合</li>
      <pre>cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>{if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}[ユーザー名]{/if}</em>.<em><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">[採掘アカウント名]</a></em> -p <em>[採掘アカウントのパスワード]</em></pre>
      <li>BFGMiner の場合</li>
      <pre>bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>{if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}[ユーザー名]{/if}</em>.<em><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">[採掘アカウント名]</a></em> -p <em>[採掘アカウントのパスワード]</em></pre>
      <li>MinerD の場合</li>
      <pre>minerd -a {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-t 6 -s 4 -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>{if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}[ユーザー名]{/if}</em>.<em><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">[採掘アカウント名]</a></em> -p <em>[採掘アカウントのパスワード]</em></pre>
      {if $GLOBAL.config.algorithm == 'scrypt'}
      <li>Cudaminer For NVIDIA Cards の場合</li>
	  <pre>cudaminer -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>{if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}[ユーザー名]{/if}</em>.<em><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">[採掘アカウント名]</a></em> -p <em>[採掘アカウントのパスワード]</em></pre>
      {/if}
	  <br />
	  <p> アカウントに反映させるために、オプションの<font color="blue">"-u [ユーザー名].[ワーカー名] -p [パスワード]"</font>を自分のアカウントの設定に変更する必要があります。たとえば、アカウント名が[user]ワーカー名が[worker1]パスワードが[123]の場合、<font color="blue">"-u user.worker1 -p 123"</font> となります。<br>
      編集後は採掘アプリケーションのあるフォルダに、[ファイル(F)]→[名前を付けて保存(A)]から<font color="blue">"[任意のファイル名].bat"</font>として保存します。（例：<font color="blue">"start.bat"</font>）<br>
      採掘を開始する場合、保存したファイルをダブルクリックで起動してください。採掘アカウント名（ワーカー名）はログイン後、<a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">こちら</a>より変更・追加が可能です。</p>
    </ul>
    <p>４．<strong>支払いを受けるための{$SITECOINNAME|default:"Litecoin"}ウォレットアドレスを作成</strong></p>
      <ul>
        <li> 公式ウォレットを利用する場合。
        <p>クライアントをダインロード後、ブロックチェーンを同期します。：　{$SITECOINNAME|default:"Litecoin"}クライアントは<a href="{$SITECOINURL}/download.html" target="_blank">公式サイト</a>からダウンロードできます。<br>
          [自分のアドレス]のタブから新しいアドレスを作成しプールに入力します。</p>
        </li>
        <li> Webウォレットを利用する場合。
        　<p>webウォレットを選択し、アカウントの登録またはログインをします。：　<a href="https://monappy.jp/">Monappy</a>　<a href="http://coins.asiru.info/">もなばんく</a>　<a href="https://walletmona.com/">WalletMona</a>　<a href="http://www.sighash.info/">sighash</a><br>
          ログイン後、受け取り用アドレスをコピー＆ペーストでプールに入力します。</p>
        </li>
      </ul>
    </li>
    {if $GLOBAL.config.algorithm == 'scrypt'}
    <p>５．<strong>詳細な設定オプション・FAQ</strong></p>
      <ul>
        <li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">Scrypt readme</a></li>
        <li>CGMinerをご利用の場合、オプションの採掘強度[-I]を高くすると採掘スピードが上がりますが同時に負荷も上がります。採掘強度を上げるとより多くのGPUのRAMを消費するようになります。通常はI=11で問題ありません。CGMinerのhardware errorを確認してHW=0でない場合は強度が高すぎます。</li>
        <li>Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://litecoin.info/Mining_Hardware_Comparison" target="_blank">here</a>.</li>
        <li>There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.</li>
        <li>Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.</li>
      </ul>
    </li>
    {/if}
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
