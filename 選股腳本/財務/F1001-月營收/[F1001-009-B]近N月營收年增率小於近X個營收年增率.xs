{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月營收年增率小於近X個營收年增率
// 顯示名稱: 近[3]月營收年增率< 近[12]月營收年增率
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,9,12
// _p2參數: 
// _p2數值: 3,6,9,12
// 
input: _p1(3);  
input: _p2(12);  
settotalBar(3);
If(summation(GetField("月營收"),_p1)/summation(GetField("月營收")[12],_p1)-1)*100 <
(summation(GetField("月營收"),_p2)/summation(GetField("月營收")[12],_p2)-1)*100 then
ret = 1;
outputField1((summation(GetField("月營收"),_p1)/summation(GetField("月營收")[12],_p1)-1)*100);
outputField2((summation(GetField("月營收"),_p2)/summation(GetField("月營收")[12],_p2)-1)*100);
outputField3(GetFielddate("月營收")[12]);
outputField4(GetFielddate("月營收"));