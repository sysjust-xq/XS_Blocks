{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 下跌成交量比大於X%
// 顯示名稱: 下跌成交量比 > [50]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,30,50,70,90
// 
input: _p1(50);
SetTotalBar(3);
If getfield("成交量") <> 0 then 
value1 = GetField("下跌量")/getfield("成交量")*100;
If value1 > _p1 then ret = 1;