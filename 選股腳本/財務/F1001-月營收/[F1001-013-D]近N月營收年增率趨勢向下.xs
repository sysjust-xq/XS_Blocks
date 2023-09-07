{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月營收年增率趨勢向下
// 顯示名稱: 近[6]個月營收年增率趨勢向下
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,9,12
// 
input:_p1(6);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(GetField("月營收年增率"), _p1) then ret=1;