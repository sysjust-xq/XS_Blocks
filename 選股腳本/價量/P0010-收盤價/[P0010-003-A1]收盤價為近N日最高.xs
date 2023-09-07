{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價為近N日最高
// 顯示名稱: 收盤價收在近[20]日最高
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,20,60,100,120,200,400
// 
Input:_p1(20);
settotalBar(_p1+2);
If getfield("收盤價")=Highest(getfield("收盤價"),_p1) then ret = 1;