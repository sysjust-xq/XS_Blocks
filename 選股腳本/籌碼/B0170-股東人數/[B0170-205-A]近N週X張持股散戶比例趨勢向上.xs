{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N週X張持股散戶比例趨勢向上
// 顯示名稱: 近[8]週[10]張持股散戶比例趨勢向上
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// _p2參數: 
// _p2數值: 1,5,10,15,50,100,200
// 
input: _p1(8);
input:_p2(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = UpTrend(GetField("散戶持股比例", param:=_p2), _p1); 
OutputField(1, GetField("散戶持股比例"));