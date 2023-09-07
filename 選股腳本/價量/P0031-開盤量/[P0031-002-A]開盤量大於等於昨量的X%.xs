{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開盤量大於等於昨量的X%
// 顯示名稱: 開盤量 >= 昨天成交量的[5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15
// 
input:_p1(5);
SetTotalBar(3); 
if GetField("開盤量") >= GetField("成交量")[1] *_p1*0.01  then ret=1; 
OutputField1(GetField("開盤量")); 
OutputField2(GetField("成交量")[1]);