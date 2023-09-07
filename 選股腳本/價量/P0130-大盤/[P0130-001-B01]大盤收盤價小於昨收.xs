{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 大盤收盤價小於昨收
// 顯示名稱: 大盤收盤價 < 昨日的收盤價
// 執行頻率: 日
// 
// 
SetTotalBar(2);
var:_side(-1);
if _side = 1 and getsymbolField("tse.tw","收盤價")>getsymbolField("tse.tw","收盤價")[1] then ret = 1
else if _side = -1 and getsymbolField("tse.tw","收盤價")<getsymbolField("tse.tw","收盤價")[1] then ret = 1;