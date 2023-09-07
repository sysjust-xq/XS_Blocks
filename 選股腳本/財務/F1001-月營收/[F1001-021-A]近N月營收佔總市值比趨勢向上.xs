{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月營收佔總市值比趨勢向上
// 顯示名稱: 近[6]月營收佔總市值比趨勢向上
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,9,12
// 
input:_p1(6);
SetTotalBar(_p1+2);
value1 = 100 * summation(GetField("月營收"),12)/GetField("總市值(億)");
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(value1, _p1) then ret=1;