{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金股利發放率近N年平均小於X%
// 顯示名稱: 現金股利發放率近[5]年平均 < [50]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 2,3,5,10
// _p2參數: 
// _p2數值: 10,30,50,70,90
// 
input:_p1(5);
input:_p2(50); 
SetTotalBar(2); 
Value1 = Average(GetField("現金派息比率"), _p1)*1;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);