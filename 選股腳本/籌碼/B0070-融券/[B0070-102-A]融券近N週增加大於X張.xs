{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融券近N週增加大於X張
// 顯示名稱: 融券近[2]週增加 > [1000]張
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4,6,8
// _p2參數: 
// _p2數值: 0,100,200,300,500,1000,2000,5000,10000
// 
input:_p1(2);
input:_p2(1000); 

SetTotalBar(2); 
Value1 = Summation(GetField("融券增減張數"), _p1);
if Value1 > 0 and Value1 > _p2 then ret=1; 
OutputField(1, Value1);