{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季營收合計較去年同期衰退X%以上
// 顯示名稱: 近四季營收合計較去年同期[衰退10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[衰退],10=[衰退10%以上],20=[衰退20%以上],30=[衰退30%以上],50=[衰退50%以上]
// 
input: _p1(10);
SetTotalBar(2);
value1 = Summation(GetField("營業收入淨額"), 4);
value2 = Summation(GetField("營業收入淨額")[4], 4);
value3 = 100*(value1 - value2)/absvalue(value2);
if value3 <= -1*_p1 then ret=1;
OutputField(1, value3, 2, "年增率");