{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今年以來累計營收較去年同期成長大於X%
// 顯示名稱: 今年以來累計月營收較去年同期[成長10%以上]
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 0=[成長],3=[成長3%以上],5=[成長5%以上],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上]
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("累計營收年增率")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);