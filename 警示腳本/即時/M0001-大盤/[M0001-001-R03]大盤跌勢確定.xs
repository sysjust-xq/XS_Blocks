{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤跌勢確定
// 顯示名稱: 大盤跌勢確定
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: period(20);//計算區間
var:_Side(-1);
settotalBar(32);
value2=NDaysAngle(period);
if _Side = 1 and average(value2,10) crosses over 0 and GetField("收盤價")>average(GetField("收盤價"),30) then ret = 1
else if _Side = -1 and average(value2,10) crosses below 0 and GetField("收盤價")<average(GetField("收盤價"),30) then ret = 1;