{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當沖佔成交比例非常穩定
// 顯示名稱: 當沖佔成交比例非常穩定
// 執行頻率: 日
// 
// 
settotalBar(50);
value1 = (volume - GetField("現股當沖張數")) / volume;
value2 = value1 - value1[1];
value3 = standarddev(value2, 5, 1);
value4 = standarddev(value2, 10, 1);
value5 = standarddev(value2, 20, 1);
if value3 = lowest(value3 ,20) and
 value4 = lowest(value4 ,20) and
 value5 = lowest(value5 ,20) 
then ret=1;