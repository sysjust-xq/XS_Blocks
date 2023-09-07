{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計營業利益率向上突破X%
// 顯示名稱: 近四季合計營業利益率向上突破 [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,10,20,30,40,50
// 
input:_p1(20); 
SetTotalBar(3); 
value1 = Summation(Getfield("營業利益","Q"),4) / Summation(getfield("營業收入淨額","Q"),4) *100; 
value2 = Summation(Getfield("營業利益","Q")[1],4) / Summation(getfield("營業收入淨額","Q")[1],4) *100; 
if value2 < _p1 and value1 > _p1 then ret=1;
OutputField1(Value1); 
OutputField2(Value2);