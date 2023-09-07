{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季營業毛利合計較去年同期成長X%以上
// 顯示名稱: 近四季營業毛利合計較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上]
// 
input: _p1(10);
SetTotalBar(2);
value1 = Summation(GetField("營業毛利"), 4);
value2 = Summation(GetField("營業毛利")[4], 4);
value3 = 100*(value1 - value2)/absvalue(value2);
if value3 >= _p1 then ret=1;
OutputField(1, value3, 2, "年增率");