{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季研發費用占市值比率趨勢向上
// 顯示名稱: 近[4]季研發費用占市值比率趨勢向上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(4);
SetTotalBar(_p1+2);
value1 = 100 * (summation(GetField("研發費用"),_p1)*0.01)/GetField("總市值(億)");
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(value1, _p1) then ret=1;