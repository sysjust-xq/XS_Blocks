{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日融資維持率趨勢向下
// 顯示名稱: 近[10]日融資維持率趨勢向下
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input: _p1(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend(GetField("融資維持率"), _p1) and getfield("融資餘額張數") > 0; 
OutputField(1, GetField("融資維持率"), 0, "融資");