{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 上游股價指標N日趨勢下降
// 顯示名稱: 上游股價指標[5]日趨勢下降
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60,120,240
// 
input: _p1(5);
SetBarFreq("AD");
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend(GetField("上游股價指標"), _p1); 
OutputField(1, GetField("上游股價指標"), 2, "產業股價指標");