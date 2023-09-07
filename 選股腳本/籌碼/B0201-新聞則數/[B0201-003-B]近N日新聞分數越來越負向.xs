{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日新聞分數越來越負向
// 顯示名稱: 近[10]日新聞分數越來越負向
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20
// 
input:_p1(10);
SetTotalBar(_p1+2);
value1 = GetField("新聞正向分數")-GetField("新聞負向分數");
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(value1, _p1) then ret=1;