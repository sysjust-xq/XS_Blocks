{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: R平方低檔回升
// 顯示名稱: R平方低檔回升
// 執行頻率: 日
// 
// 
input:Length(20); //"計算期間"
settotalBar(22*4);
LinearReg(close, Length, 0, value1, value2, value3, value4);
//做收盤價20天線性回歸
{value1:斜率,value4:預期值}
value5=rsquare(close,value4,Length);//算收盤價與線性回歸值的R平方 
if value5 crosses over 0.2 
then ret=1;