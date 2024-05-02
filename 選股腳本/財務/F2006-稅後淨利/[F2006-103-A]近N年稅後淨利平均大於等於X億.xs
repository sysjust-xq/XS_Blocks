{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年稅後淨利平均大於等於X億
// 顯示名稱: 近[3]年稅後淨利平均 >= [10]億
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 1,2,3,5,10,20,50,100
// 
input:_p1(3);
input:_p2(10); 
SetTotalBar(2); 
Value1 = Average(GetField("本期稅後淨利"), _p1)*0.01;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);