{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每股淨值近N季平均大於等於X元
// 顯示名稱: 每股淨值近[4]季平均 >= [10]元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 5,6,7,8,9,10,15,20,30,50,100
// 
input:_p1(4);
input:_p2(10); 
SetTotalBar(2); 
Value1 = Average(GetField("每股淨值(元)"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);