{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價N日趨勢朝上
// 顯示名稱: 收盤價[10]日趨勢朝上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input: _p1(10);
SetBarFreq("AD");
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = UpTrend(GetField("Close"), _p1); 
OutputField(1, GetField("Close"), 2, "收盤價");