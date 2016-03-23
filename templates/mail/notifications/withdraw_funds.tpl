<html>
<body>
<p>手動の出金リクエストがされました。</p>
<p>出金をするには下のURLをクリックして認証してください。万一このリクエストをしてない場合は、リンクをクリックせずに、お手数ですがプールのサポートにご連絡ください。</p>
<p><a href="http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=account&action=edit&wf_token={nocache}{$DATA.token}{/nocache}">http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=account&action=edit&wf_token={nocache}{$DATA.token}{/nocache}</a></p>
<br/>
<p>ご不明な点がある場合は、下記のサポートまでご連絡ください。</p>
<p>
<b>株式会社ｎｓｒｖ</b><br/>
nsrv Co.,Ltd. - monacoin pool<br/>
<a href="https://www.nsrv.co.jp/pool/">https://www.nsrv.co.jp/pool/</a><br/>
support:<a href="mailto:support@nsrv.co.jp">support@nsrv.co.jp</a><br/>
</p>
<br/>
</body>
</html>
