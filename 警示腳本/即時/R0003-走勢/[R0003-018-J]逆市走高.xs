{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 逆市走高
// 顯示名稱: 逆市走高
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalbar(10);
variable:_Period(10);//計算區間
variable:_Side(1);

value1 = linearRegSlope(GetSymbolField("tse.tw","收盤價"),_Period);
value2 = linearRegSlope(close,_Period);

condition1 = _Side * value1 < 0;
condition2 = _Side * value2 > 0;
ret = condition1 and condition2;