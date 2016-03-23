<html>
<body>
<p>{nocache}{$DATA.username}{/nocache}様</p><br/>
<p>あなたのアカウントのパスワード変更のリクエストが行われました。パスワードを変更するには下記のリンクをクリックしてください。</p>
<p><a href="http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=password&action=change&token={nocache}{$DATA.token}{/nocache}">http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=password&action=change&token={nocache}{$DATA.token}{/nocache}</a></p>
<p>パスワードを変更すると、次回から新しいパスワードでログインできます。</p>
<p>このパスワード変更要求にお心当たりのない場合は、お手数ですが下記のサポートにご連絡ください。</p><br/>
<p>
<b>株式会社ｎｓｒｖ</b><br/>
nsrv Co.,Ltd. - monacoin pool<br/>
<a href="https://www.nsrv.co.jp/pool/">https://www.nsrv.co.jp/pool/</a><br/>
support:<a href="mailto:support@nsrv.co.jp">support@nsrv.co.jp</a><br/>
</p>
</body>
</html>
