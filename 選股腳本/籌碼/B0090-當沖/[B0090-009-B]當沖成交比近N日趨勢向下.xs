{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當沖成交比近N日趨勢向下
// 顯示名稱: 當沖成交比近[10]日趨勢向下
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input: _p1(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend((GetField("當日沖銷張數")/getfield("成交量", "D"))*100,_p1); 
OutputField(1, Value1);