{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N週平均跌幅大於等於X%
// 顯示名稱: 近[4]週平均跌幅 >= [5]%
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4,6,8
// _p2參數: 
// _p2數值: 0,5,10,15,20,30,40
// 
input: _p1(4);
input: _p2(5);
SetTotalBar(2);
value1 = RateOfChange(GetField("收盤價"),_p1)/_p1;
value2 = -1*value1;
if value2 >= _p2 then ret=1;