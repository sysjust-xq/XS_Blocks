{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年常續性利益稅後趨勢向上
// 顯示名稱: 近[3]年稅後常續性利益趨勢向上
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(3);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(GetField("常續性利益(稅後)"), _p1) then ret=1;