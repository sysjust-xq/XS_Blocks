{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季每股營業利益趨勢向下
// 顯示名稱: 近[8]季每股營業利益趨勢向下
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// 
input:_p1(8);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(GetField("每股營業利益(元)"), _p1) then ret=1;