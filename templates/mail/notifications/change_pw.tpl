<html>
<body>
<p>パスワード変更の確認</p>
<p>アカウントのパスワードを変更するには、下記のリンクをクリックして変更してください。 あなたが開始した要求でない場合は、お手数ですがプールのサポートにご連絡ください。</p>
<p><a href="http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=account&action=edit&cp_token={nocache}{$DATA.token}{/nocache}">http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=account&action=edit&cp_token={nocache}{$DATA.token}{/nocache}</a></p>
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
