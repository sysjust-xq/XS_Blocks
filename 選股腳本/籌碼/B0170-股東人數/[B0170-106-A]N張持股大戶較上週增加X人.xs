{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N張持股大戶較上週增加X人
// 顯示名稱: [400]張持股大戶較上週增加[5]人
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 400,600,800,1000
// _p2參數: 
// _p2數值: 0,5,10,20,30,40,50,60,70
// 
input:_p1(400);
input:_p2(5);
SetTotalBar(2); 
Value1 = GetField("大戶持股人數", param:=_p1);
if Value1 > GetField("大戶持股人數", param:=_p1)[1]+_p2 then ret=1; 
OutputField(1, Value1);
OutputField(2, GetField("大戶持股人數", param:=_p1)[1]);