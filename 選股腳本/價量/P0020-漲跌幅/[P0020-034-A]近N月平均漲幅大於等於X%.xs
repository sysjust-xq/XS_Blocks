{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月平均漲幅大於等於X%
// 顯示名稱: 近[6]月平均漲幅 >= [20]%
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,2,3,6,12
// _p2參數: 
// _p2數值: 1,2,3,5,7,10,15,20,25,40
// 
input: _p1(6);
input: _p2(20);
SetTotalBar(2);
value1 = RateOfChange(GetField("收盤價"),_p1)/_p1;
value2 = 1*value1;
if value2 >= _p2 then ret=1;