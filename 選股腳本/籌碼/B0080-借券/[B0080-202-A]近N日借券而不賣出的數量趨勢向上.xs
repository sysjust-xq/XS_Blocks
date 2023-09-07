{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日借券而不賣出的數量趨勢向上
// 顯示名稱: 近[10]日借券而不賣出的數量趨勢向上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input:_p1(10);
SetTotalBar(_p1+2);
value1 = GetField("借券餘額張數");
value2 = GetField("借券賣出餘額張數");
value3 = value1 - value2; { 借券而沒賣出 }
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(value3, _p1) then ret=1;