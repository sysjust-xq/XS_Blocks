{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 今年以來累計EPS前100名
// 顯示名稱: 今年以來累計EPS前100名
// 執行頻率: 季
// 
// 
value1 = GetFieldDate("EPS", "Q");
value2 = Month(value1) / 3;                
retval = Summation(GetField("EPS", "Q"), value2);