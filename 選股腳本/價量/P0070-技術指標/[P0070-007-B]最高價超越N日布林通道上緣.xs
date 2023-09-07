{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最高價超越N日布林通道上緣
// 顯示名稱: 最高價超越[20]日布林通道上緣
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// 
Input: _p1(20), BBand(2, "通道");
SetBarFreq("AD");
SetTotalBar(_p1);
Value1 = bollingerband(Close, _p1, BBand);
if High >= Value1 then ret=1;