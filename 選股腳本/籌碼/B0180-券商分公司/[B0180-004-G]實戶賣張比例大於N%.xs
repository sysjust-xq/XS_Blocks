{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 實戶賣張比例大於N%
// 顯示名稱: 實戶賣張比例 > [30]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 30,40,50,60,70
// 
input:_p1(30);
SetTotalBar(_p1+2);
Value1 = GetField("實戶賣張");
value2 = GetField("成交量");
if value2 <> 0 and
Value1/value2 > _p1 then ret = 1;