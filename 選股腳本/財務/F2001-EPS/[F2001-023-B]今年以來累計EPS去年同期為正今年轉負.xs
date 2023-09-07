{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今年以來累計EPS去年同期為正今年轉負
// 顯示名稱: 今年以來累計EPS去年同期為正今年轉負
// 執行頻率: 季
// 
// 
input:_p1(5);
value1 = GetFieldDate("EPS", "Q");
value2 = Month(value1) / 3;                
value3= Summation(GetField("EPS", "Q"), value2);
If Summation(GetField("EPS", "Q")[4], value2) >0 and value3<0 then  ret = 1;
outputField1(value3,"今年以來累計");
outputField2(Summation(GetField("EPS", "Q")[1], value2),"今年以來前一天");