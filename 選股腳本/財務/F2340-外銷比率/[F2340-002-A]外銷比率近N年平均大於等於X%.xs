{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外銷比率近N年平均大於等於X%
// 顯示名稱: 外銷比率近[3]年平均 >= [20]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 20,30,50,70,90
// 
input:_p1(3);
input:_p2(20); 
SetTotalBar(2); 
Value1 = Average(GetField("外銷比率"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);