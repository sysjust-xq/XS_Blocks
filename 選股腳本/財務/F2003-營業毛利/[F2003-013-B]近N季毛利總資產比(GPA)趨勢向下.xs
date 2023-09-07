{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季毛利總資產比(GPA)趨勢向下
// 顯示名稱: 近[4]季毛利總資產比(GPA)趨勢向下
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(4);
SetTotalBar(_p1+2);
value1 = 100 * summation(GetField("營業毛利"),4)/GetField("資產總額");
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(value1, _p1) then ret=1;