{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季自由現金流量佔市值比重趨勢朝下
// 顯示名稱: 近[8]季自由現金流量佔市值比重趨勢朝下
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
{自由現金流量要用近四季加總}
input:_p1(8);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
value1 = Summation(GetField("自由現金流量"),4) /  GetField("總市值(億)");
if DownTrend(value1, _p1) then ret=1;