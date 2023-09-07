{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月營收平均值大於近X月營收平均值
// 顯示名稱: 近[3]月平均營收 > 近[12]月平均營收
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,9,12
// _p2參數: 
// _p2數值: 3,6,9,12
// 
input: _p1(3);  
input: _p2(12);  
settotalBar(_p2);
If average(GetField("月營收"),_p1) > average(GetField("月營收"),_p2) then ret = 1;
outputField1(average(GetField("月營收"),_p1));
outputField2(average(GetField("月營收"),_p2));