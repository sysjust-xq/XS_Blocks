{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 股價跳到另一整數價位區
// 顯示名稱: 股價跳到另一整數價位區
// 執行頻率: 日(逐筆洗價)
// 
// 
var:period(10);//維持原價位區間的天數
settotalBar(12);
value1=intportion(close/10);
ret = trueall(value1[1]=value1[2],period)
and value1>value1[1] 
and value1<10;