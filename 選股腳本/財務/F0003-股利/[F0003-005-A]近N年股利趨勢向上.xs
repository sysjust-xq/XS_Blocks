{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年股利趨勢向上
// 顯示名稱: 近[10]年[現金股利]趨勢向上
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 5,10,15
// _p2參數: 
// _p2數值: 0=[股利],1=[現金股利],2=[股票股利]
// 
input:_p1(10);
input:_p2(1);
SetTotalBar(_p2+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p2 then return;
if _p1 = 0 and UpTrend(GetField("股利合計"), _p2) then ret=1;
if _p1 = 1 and UpTrend(GetField("現金股利"), _p2) then ret=1;
if _p1 = 2 and UpTrend(GetField("股票股利"), _p2) then ret=1;