{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 吉尼係數(依分公司交易家數統計)大於N
// 顯示名稱: 吉尼係數(依分公司交易家數統計) > [0.8]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.1,0.5,0.7,0.8
// 
input:_p1(0.8);
SetTotalBar(2); 
Value1 = GetField("吉尼係數");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);