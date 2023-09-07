{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季現金流量比率趨勢向上
// 顯示名稱: 近[4]季現金流量比率趨勢向上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// 
input:_p1(4);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(GetField("現金流量比率"), _p1) then ret=1;