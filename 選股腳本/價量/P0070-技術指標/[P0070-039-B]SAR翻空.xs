{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: SAR翻空
// 顯示名稱: SAR翻空
// 執行頻率: 日
// 
// 
var:AFIncrement(0.02), AFMax(0.2),sarValue(0);
settotalbar(100);
sarValue = SAR(AFIncrement, AFIncrement, AFMax);        
if close crosses under sarValue then ret = 1;