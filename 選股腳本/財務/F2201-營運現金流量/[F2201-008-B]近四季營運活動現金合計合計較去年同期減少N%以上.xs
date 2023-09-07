{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季營運活動現金合計合計較去年同期減少N%以上
// 顯示名稱: 近四季營運活動現金合計合計較去年同期[減少10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[減少],10=[減少10%以上],20=[減少20%以上],30=[減少30%以上],50=[減少50%以上]
// 
input: _p1(10);
SetTotalBar(2);
value1 = Summation(GetField("來自營運之現金流量"), 4);
value2 = Summation(GetField("來自營運之現金流量")[4], 4);
value3 = 100*(value1 - value2)/absvalue(value2);
if value3 <= -1*_p1 then ret=1;
OutputField(1, value3, 2, "年增率");