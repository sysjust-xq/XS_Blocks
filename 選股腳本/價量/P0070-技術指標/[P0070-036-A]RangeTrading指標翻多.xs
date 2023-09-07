{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: RangeTrading指標翻多
// 顯示名稱: Range Trading 指標翻多
// 執行頻率: 日
// 
// 
settotalBar(200);
value1=average(range,200);
value2=average(range,3);
value3=(value2-value1)/value1;
if value3 cross over -0.6
then ret=1;