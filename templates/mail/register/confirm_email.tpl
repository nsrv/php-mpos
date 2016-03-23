<html>
<body>
<p>{nocache}{$DATA.username}{/nocache}様</p><br />
<p>この度は当プールにご登録いただき、ありがとうございます。</p>
<p>アカウントの登録を完了するには、下記のリンクをクリックしてください。</p>
<p>http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=account&action=confirm&token={nocache}{$DATA.token}{/nocache}</p>
<p></p>
<p>このメールにお心当たりのない場合は、他の方がメールアドレスを間違えて登録された可能性がございます。</p>
<p>お手数ですがリンクをクリックせずに削除してください。</p><br/>
<p>
<b>株式会社ｎｓｒｖ</b><br/>
nsrv Co.,Ltd. - monacoin pool<br/>
<a href="https://www.nsrv.co.jp/pool/">https://www.nsrv.co.jp/pool/</a><br/>
support:<a href="mailto:support@nsrv.co.jp">support@nsrv.co.jp</a><br/>
</p>
</body>
</html>
