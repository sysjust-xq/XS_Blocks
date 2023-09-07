{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股利佔來自營運現金流量比率小於X%
// 顯示名稱: 股利佔來自營運現金流量比率 < [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,30,50,100
// 
input:_p1(10);
SetTotalBar(3);
value1 = GetField("現金股利","Y")*GetField("加權平均股數","Y");
If GetField("來自營運之現金流量","Y") <> 0 then
value2 = ((value1)*100/GetField("來自營運之現金流量","Y"))*100;
If value2 < _p1 then ret = 1;
outputField1(GetField("現金股利","Y"),"股利合計");
outputField2(GetField("加權平均股數","Y"),"加權平均股數");
outputField3(value1,"股利*加權平均股數");
outputField4(GetField("來自營運之現金流量"),"來自營運之現金流量");
outputField5(value2,"股利佔來自營運現金流量比率");