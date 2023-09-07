{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N週X張持股大戶比例趨勢向下
// 顯示名稱: 近[8]週[400]張持股大戶比例趨勢向下
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// _p2參數: 
// _p2數值: 400,600,800,1000
// 
input: _p1(8);
input:_p2(400);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = DownTrend(GetField("大戶持股比例", param:=_p2), _p1); 
OutputField(1, GetField("大戶持股比例"));