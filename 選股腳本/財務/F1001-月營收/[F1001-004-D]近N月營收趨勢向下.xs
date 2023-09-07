{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月營收趨勢向下
// 顯示名稱: 近[12]個月營收趨勢向下
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 6,12,18,24,36
// 
input:_p1(12);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(GetField("月營收"), _p1) then ret=1;