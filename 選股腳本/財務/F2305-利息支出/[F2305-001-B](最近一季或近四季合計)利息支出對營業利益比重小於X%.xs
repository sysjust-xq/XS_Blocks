{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: (最近一季或近四季合計)利息支出對營業利益比重小於X%
// 顯示名稱: [近四季合計]利息支出佔營業利益比重 < [1]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1=[最近一季],4=[近四季合計]
// _p2參數: 
// _p2數值: 1,5,10,15,20
// 
input: _p1(4);
input: _p2(1);
value1 = Summation(GetField("利息支出"), _p1);
value2 = Summation(GetField("營業利益"), _p1);
IF value1 < value2 * _p2 * 0.01 then ret = 1;
outputField1(value1);
outputField2(value2);