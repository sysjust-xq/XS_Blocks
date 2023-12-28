{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營收較去年同期衰退N%以上
// 顯示名稱: 營收較去年同期[衰退10%以上]
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 0=[衰退],-5=[衰退5%以內],5=[衰退5%以上],-10=[衰退10%以內],10=[衰退10%以上],-20=[衰退20%以內],20=[衰退20%以上],-30=[衰退30%以內],30=[衰退30%以上],-50=[衰退50%以內],50=[衰退50%以上]
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("月營收年增率")*1;
if _p1 > 0 and Value1 < -1*_p1  and value1 <0 then ret=1; 
if _p1 = 0 and value1 < 0 then ret=1; 
If _p1 < 0 and Value1 > _p1  and value1 <0 then ret=1; 
OutputField(1, Value1);