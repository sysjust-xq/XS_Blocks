{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 出水芙蓉
// 顯示名稱: 出水芙蓉
// 執行頻率: 日(逐筆洗價)
// 
// 股價長期低於季線，今日帶量突破季線
// 
var:period(35);//股價低於季線持續的時間
settotalBar(70);
ret = trueall(close[1]<average(close,66),period) and close crosses over average(close,66);