{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出佔來自營運現金流量比重大於等於X%
// 顯示名稱: 資本支出佔來自營運現金流量比重 >= [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,5,10,15,20,25,30
// 
input:_p1(10);
SetTotalBar(2);
value1= getField("資本支出金額");
value2 = getField("來自營運之現金流量");
value3 = 100 * value1 / value2;
if value3 >= _p1 then ret=1;