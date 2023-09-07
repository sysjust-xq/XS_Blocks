{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今年以來累計EPS大於去年整年的EPS
// 顯示名稱: 今年以來累計EPS大於去年整年的EPS
// 執行頻率: 季
// 
// 
SetTotalBar(2);

value1 = GetFieldDate("EPS", "Q");

// 今年期別
//
value2 = Month(value1) / 3;                

value3 = Summation(GetField("EPS", "Q"), value2);
value4 = Summation(GetField("EPS", "Q")[value2], 4);

OutputField(1, value3, 2, "今年");
OutputField(2, value4, 2, "去年");

if value3 > value4 then ret=1;