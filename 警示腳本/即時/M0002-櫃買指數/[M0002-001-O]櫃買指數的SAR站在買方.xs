{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數的SAR站在買方
// 顯示名稱: 櫃買指數的SAR站在買方
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:AFIncrement(0.02),AFMax(0.2);
settotalbar(100);
variable:sarValue(0),_Side(0);
_Side=1;
sarValue = SAR(AFIncrement, AFIncrement, AFMax);
if _Side = 1 and getfield("收盤價") > sarValue then ret = 1
else if _Side = -1 and getfield("收盤價") < sarValue then ret = 1;