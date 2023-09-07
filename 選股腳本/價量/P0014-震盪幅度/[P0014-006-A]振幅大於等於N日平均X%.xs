{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 振幅大於等於N日平均X%
// 顯示名稱: 振幅 >= [5]日平均[1]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 1,2,3,5,7,10
// 
input:_p1(5);
input:_p2(1);
SetTotalBar(2);
value1 = getField("振幅") - Average(getField("振幅")[1], _p1);
value2 = 1*value1;
if value2 >= _p2 then ret=1;