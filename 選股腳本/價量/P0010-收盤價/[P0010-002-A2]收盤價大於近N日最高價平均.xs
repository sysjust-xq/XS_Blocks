{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價大於近N日最高價平均
// 顯示名稱: 收盤價 > 近[20]日最高價平均
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
Input:_p1(20); 
SetTotalBar(2);
If getField("收盤價") >Average(getField("最高價") ,_p1) then ret = 1;