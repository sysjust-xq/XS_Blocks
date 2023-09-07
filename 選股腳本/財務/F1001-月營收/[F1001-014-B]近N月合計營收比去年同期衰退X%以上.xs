{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月合計營收比去年同期衰退X%以上
// 顯示名稱: 近[3]月合計營收比去年同期[衰退10%以上]
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 0=[衰退],-10=[衰退10%以內],10=[衰退10%以上],-20=[衰退20%以內],20=[衰退20%以上],-30=[衰退30%以內],30=[衰退30%以上],-50=[衰退50%以內],50=[衰退50%以上]
// 
input:_p1(3); 
input:_p2(10); 
SetTotalBar(3);
value1 = Summation(getfield("月營收"),_P1); 
value2 = Summation(getfield("月營收")[12],_P1); 
if _p2 = 0 and value1 - value2 < 0 then ret=1;
if _p2 > 0 and value1 - value2 <= (-1*value2*_p2*0.01) then ret=1;
if _p2 < 0 and value1 - value2 > (value2*_p2*0.01) and value1-value2 < 0 then ret=1;
OutputField1(Value1); 
OutputField2(Value2); 
outputField3(((value1 - value2)/value2)*100,"成長%");
outputField4(RateOfChange(Summation(getfield("月營收"),_P1),12));