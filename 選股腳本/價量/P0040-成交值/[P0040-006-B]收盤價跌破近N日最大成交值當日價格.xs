{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價跌破近N日最大成交值當日價格
// 顯示名稱: 收盤價跌破近[5]日最大成交值當日價格
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input: _p1(5);
SetTotalBar(_p1+3);
If GetField("成交金額(元)") = highest(GetField("成交金額(元)"),_p1) then 
value1 = getfield("收盤價");
If c cross Below value1 then ret = 1;