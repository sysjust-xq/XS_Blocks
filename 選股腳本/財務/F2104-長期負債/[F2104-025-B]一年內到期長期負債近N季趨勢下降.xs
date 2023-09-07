{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 一年內到期長期負債近N季趨勢下降
// 顯示名稱: 一年內到期長期負債近[4]季趨勢下降
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(4);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(GetField("一年內到期長期負債"), _p1) then ret=1;