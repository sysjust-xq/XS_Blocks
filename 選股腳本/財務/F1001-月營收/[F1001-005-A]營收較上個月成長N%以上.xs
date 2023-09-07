{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營收較上個月成長N%以上
// 顯示名稱: 營收較上個月[成長10%以上]
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 0=[成長],-10=[成長10%以內],10=[成長10%以上],-20=[成長20%以內],20=[成長20%以上],-30=[成長30%以內],30=[成長30%以上],-50=[成長50%以內],50=[成長50%以上]
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("月營收月增率")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);