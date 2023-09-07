{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 分公司買進家數是賣出家數的X倍以上
// 顯示名稱: 分公司買進家數是賣出家數的[2]倍以上
// 執行頻率: 日
// 
// 籌碼發散
// _p1參數: 
// _p1數值: 2,3,5,10
// 
input:_p1(2);
SetTotalBar(2); 
Value1 = GetField("分公司淨買超金額家數");
value2 = GetField("分公司淨賣超金額家數");
If value1 > (_p1* value2) then ret = 1;
OutputField(1, Value1); 
OutputField(2, Value2);