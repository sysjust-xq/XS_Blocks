{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價差N%就會突破近X日最大成交值當日價格
// 顯示名稱: 收盤價差[3]%就會突破近[5]日最大成交值當日價格
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 1,3,5,7,10
// 
input: _p1(3),_p2(5);
SetTotalBar(_p1+3);
If GetField("成交金額(元)") = highest(GetField("成交金額(元)"),_p1) then 
value1 = getfield("收盤價");
If c < value1 and c>(value1*(1-(_p2/100))) then ret = 1;