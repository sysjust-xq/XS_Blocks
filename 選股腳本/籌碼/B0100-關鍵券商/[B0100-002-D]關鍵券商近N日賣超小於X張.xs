{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 關鍵券商近N日賣超小於X張
// 顯示名稱: 關鍵券商近[5]日賣超 < [100]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 100,200,300,500,1000
// 
input:_p1(5);
input:_p2(100); 

SetTotalBar(2); 
Value1 = Summation(GetField("關鍵券商買賣超張數"), _p1);
if Value1 < 0 and Value1 > -_p2 then ret=1; 
OutputField(1, Value1);