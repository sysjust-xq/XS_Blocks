{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 今年以來累計EPS年增率前100名
// 顯示名稱: 今年以來累計EPS年增率前100名
// 執行頻率: 季
// 
// 
value1 = GetFieldDate("EPS", "Q");
value2 = Month(value1) / 3;                
value3 = Summation(GetField("EPS", "Q"), value2);
value4 = Summation(GetField("EPS", "Q")[4], value2);
value5 = 100 * (value3 - value4) / absvalue(value4);
if value5 <= 0 then return;
retval = value5;