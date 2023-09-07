{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 總成交次數的N日趨勢朝下
// 顯示名稱: 總成交次數的[5]日趨勢朝下
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input: _p1(5);
SetBarFreq("AD");
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend(GetField("總成交次數"), _p1); 
OutputField(1, GetField("總成交次數"), 0, "總成交次數");