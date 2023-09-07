{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日平均交易家數小於近X日平均交易家數
// 顯示名稱: 近[3]日平均交易家數 < 近[60]日平均交易家數
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,4,5
// _p2參數: 
// _p2數值: 10,20,30,40,50,60
// 
input:_p1(3);
input:_p2(60); 
SetTotalBar(2); 
Value1 = round(average(GetField("分公司交易家數"),_p1),0);
value2 = round(average(GetField("分公司交易家數"),_p2),0);
If value1 < value2 then ret = 1;
OutputField(1, Value1,"近期分公司交易家數"); 
OutputField(2, Value2,"遠期分公司交易家數");