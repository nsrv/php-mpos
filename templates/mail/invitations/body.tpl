<html>
<body>
<p>Monacoin採掘者様（招待メール）</p><br />
<p>招待したユーザー名：　{nocache}{$DATA.username}{/nocache}</p><br>

<p>プールへの招待URL：
<p><a href="http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=register&token={nocache}{$DATA.token}{/nocache}">http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=register&token={nocache}{$DATA.token}{/nocache}</a></p>
{if $DATA.message}<p>招待者からのメッセージ：</p><p>{nocache}{$DATA.message}{/nocache}</p>{/if}
<p></p><br><br>
<p>
<b>株式会社ｎｓｒｖ</b><br/>
nsrv Co.,Ltd. - monacoin pool<br/>
<a href="https://www.nsrv.co.jp/pool/">https://www.nsrv.co.jp/pool/</a><br/>
support:<a href="mailto:support@nsrv.co.jp">support@nsrv.co.jp</a><br/>
</p>
</body>
</html>
