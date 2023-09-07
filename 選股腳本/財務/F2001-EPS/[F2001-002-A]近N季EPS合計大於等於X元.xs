{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季EPS合計大於等於X元
// 顯示名稱: 近[4]季EPS合計 >= [1]元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 2,3,4,8
// _p2參數: 
// _p2數值: 1,2,3,5,10
// 
input:_p1(4);
input:_p2(1); 
SetTotalBar(2); 
Value1 = Summation(GetField("EPS"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);