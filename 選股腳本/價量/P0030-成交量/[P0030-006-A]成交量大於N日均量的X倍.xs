{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 成交量大於N日均量的X倍
// 顯示名稱: 成交量 > 前[5]日均量的[2]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 0.5,1,1.5,2,2.5,3,5
// 
input:_p1(5);
input:_p2(2);
SetTotalBar(2);
value1 = GetField("成交量") - Average(GetField("成交量")[1], _p1)* _p2;
value2 = 1 * value1;
IF value2 > 0 then ret = 1;