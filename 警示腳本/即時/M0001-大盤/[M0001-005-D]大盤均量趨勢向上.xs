{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤均量趨勢向上
// 顯示名稱: 大盤均量趨勢向上
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(20);//,"計算區間"
var:_Side(1);
settotalBar(22);
if _Side = 1 and UpTrend(Average(GetField("成交量"),period),10) then ret = 1
else if _Side = -1 and UpTrend(Average(GetField("成交量"),period),10) then ret = 1;