{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出加股利佔營運現金流比率大於等於X%
// 顯示名稱: 資本支出加股利佔營運現金流比率 >= [1]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,5,10,20,50
// 
input:_p1(1);
SetTotalBar(2);
value1 = (getfield("現金股利", "Y")*getfield("加權平均股數", "Y"))*100; // (換成百萬)
value2 = ((getfield("資本支出金額", "Y") + value1) /getfield("來自營運之現金流量", "Y"))*100;
If value2 >= _p1 then ret = 1;
outputField(1,value1);
outputField(2,value2);