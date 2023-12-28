{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N張散戶持股比例近X週減少Y%以上
// 顯示名稱: [10]張持股散戶比例近[2]週減少[1]%以上
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,5,10,15,50,100,200
// _p2參數: 
// _p2數值: 1,2,3,4
// _p3參數: 
// _p3數值: 1,2,3,5,10
// 
input:_p1(10);
input:_p2(2);
input:_p3(1);
SetTotalBar(2); 
Value1 = GetField("散戶持股比例", param:=_p1);
Value2 = GetField("散戶持股比例", param:=_p1)[_p2];
Value3 = Value1 - Value2;
if Value3 <=  - _p3 then ret=1; 
OutputField(1, Value1);