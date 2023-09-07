{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日投信持股平均大於等於X張
// 顯示名稱: 近[5]日投信持股平均 >= [5000]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 2000,5000,10000,50000,100000
// 
input:_p1(5);
input:_p2(5000); 
SetTotalBar(2); 
Value1 = Average(GetField("投信買賣超"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);