{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 主力近N日買超小於X張
// 顯示名稱: 主力近[5]日買超 < [1000]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 100,200,300,500,1000,2000,5000,10000
// 
input:_p1(5);
input:_p2(1000); 

SetTotalBar(2); 
Value1 = Summation(GetField("主力買賣超張數"), _p1);
if Value1 > 0 and Value1 < _p2 then ret=1; 
OutputField(1, Value1);