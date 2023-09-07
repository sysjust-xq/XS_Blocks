{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 買盤成交量比大於X%
// 顯示名稱: 買盤成交量比 > [50]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 50,55,60,65,70,75,80,90
// 
input: _p1(50);
SetTotalBar(3);
If getfield("成交量") <> 0 then 
value1 = GetField("外盤量")/getfield("成交量")*100;
If value1 > _p1 then ret = 1;