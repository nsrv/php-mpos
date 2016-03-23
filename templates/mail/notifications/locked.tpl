<html>
<body>
<p>パスワードまたは認証コード（PIN）の入力に連続して失敗したため、あなたのアカウントはロックされました。ロックを解除するためには下記のURLに従ってください。</p>
<p><a href="http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=account&action=unlock&token={nocache}{$DATA.token}{/nocache}">http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=account&action=unlock&token={nocache}{$DATA.token}{/nocache}</a></p>
<br/>
<p>
<b>株式会社ｎｓｒｖ</b><br/>
nsrv Co.,Ltd. - monacoin pool<br/>
<a href="https://www.nsrv.co.jp/pool/">https://www.nsrv.co.jp/pool/</a><br/>
support:<a href="mailto:support@nsrv.co.jp">support@nsrv.co.jp</a><br/>
</p>
<br/>
</body>
</html>
