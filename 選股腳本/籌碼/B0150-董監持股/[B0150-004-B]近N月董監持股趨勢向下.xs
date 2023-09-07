{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月董監持股趨勢向下
// 顯示名稱: 近[6]月董監持股趨勢向下
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 6,12,18
// 
input: _p1(6);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend(GetField("董監持股"), _p1); 
OutputField(1, GetField("董監持股"), 0, "董監持股");