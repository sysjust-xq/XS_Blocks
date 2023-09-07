{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季營運現金流量對淨利比趨勢朝下
// 顯示名稱: 近[8]季營運現金流量對淨利比趨勢朝下
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(8);

SetTotalBar(_p1+2);
value1 = 100 * GetField("來自營運之現金流量")/GetField("本期稅後淨利");

if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(value1, _p1) then ret=1;