{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 十字線
// 顯示名稱: 十字線
// 執行頻率: 日(逐筆洗價)
// 
// 
SetTotalBar(3);
condition1= close = open; //狀況1:        開盤價等於收盤價
condition2= high>open; //狀況2:        有漲
condition3= low<open; //狀況3:        有跌
if condition1 and condition2 and condition3
then ret=1;