{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 零股量大於成交量的X%
// 顯示名稱: 零股量 >= 成交量的[3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15
// 
input:_p1(3);
SetTotalBar(3); 
if GetField("零股量") >= GetField("成交量")[0] *_p1*0.01  then ret=1; 
OutputField1(GetField("零股量")); 
OutputField2(GetField("成交量")[0]);