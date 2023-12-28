{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N張持股散戶較上週減少X人
// 顯示名稱: [10]張持股散戶較上週減少[50]人
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,5,10,15,50,100,200
// _p2參數: 
// _p2數值: 5,10,50,100,200
// 
input:_p1(10);
input:_p2(50);
SetTotalBar(2); 
Value1 = GetField("散戶持股人數", param:=_p1);
if Value1 < GetField("散戶持股人數", param:=_p1)[1]-_p2 then ret=1; 
OutputField(1, Value1);
OutputField(2, GetField("散戶持股人數", param:=_p1)[1]);