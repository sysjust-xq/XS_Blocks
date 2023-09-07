{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 上昇趨勢確立
// 顯示名稱: 上昇趨勢確立
// 執行頻率: 日(逐筆洗價)
// 
// 
var:Length(20); //"計算期間"
settotalBar(22);
LinearReg(close, Length, 0, value1, value2, value3, value4);
//做收盤價20天線性回歸
value5=rsquare(close,value4,20);//算收盤價與線性回歸值的R平方
ret = value1> 0 and value5 crosses over 0.2;