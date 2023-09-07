{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月平均營收跌破X月平均營收
// 顯示名稱: 近[3]月平均營收跌破近[12]月平均營收
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,3,6
// _p2參數: 
// _p2數值: 3,6,12
// 
SetTotalBar(3); 
input: _p1(3);
input: _p2(12);
If _p1 >= _p2 then return;
value1 = Average(GetField("月營收"), _p1);
value2 = Average(GetField("月營收"), _p2);
if value1 cross below value2 then ret=1;
OutputField(1, value1, 2, "短天期");
OutputField(2, value2, 2, "長天期");