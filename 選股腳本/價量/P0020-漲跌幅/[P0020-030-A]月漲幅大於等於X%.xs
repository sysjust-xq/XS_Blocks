{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月漲幅大於等於X%
// 顯示名稱: 月漲幅 >= [20]%
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7,10,15,20,25
// 
input: _p1(20);
SetTotalBar(2);
value1 = RateOfChange(GetField("收盤價"),1);
value2 = 1*value1;
if value2 >= _p1 then ret=1;