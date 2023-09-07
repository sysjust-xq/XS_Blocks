{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日新聞則數趨勢向下
// 顯示名稱: 近[5]日新聞則數趨勢向下
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input: _p1(5);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend(GetField("新聞聲量分數"), _p1); 
OutputField(1, GetField("新聞聲量分數"), 0, "新聞則數");