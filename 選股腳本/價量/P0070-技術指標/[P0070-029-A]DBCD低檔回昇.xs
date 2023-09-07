{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: DBCD低檔回昇
// 顯示名稱: DBCD低檔回昇
// 執行頻率: 日
// 
// 
var:length1(10),length2(20),length3(14);
settotalBar(22);
value1=bias(length1);
value2=bias(length2);
value3=value2-value1;
value4=average(value3,length3);
ret = value4 crosses over -2;