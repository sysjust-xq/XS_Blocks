{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數正DMI大於負DMI
// 顯示名稱: 櫃買指數正DMI大於負DMI
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(14);
variable: pdi(0), ndi(0), adx_value(0), _Side(0);
settotalbar(maxlist(14,6) * 13 + 8);
_Side = 1;
DirectionMovement(period, pdi, ndi, adx_value);
if _Side = 1 and pdi > ndi then ret = 1
else if _Side = -1 and pdi < ndi then ret = 1;