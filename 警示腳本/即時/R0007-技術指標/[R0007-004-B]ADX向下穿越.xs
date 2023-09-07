{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: ADX向下穿越
// 顯示名稱: ADX向下穿越25
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: Length(14);
Var: Threshold(25);
Var:pdi_value(0), ndi_value(0), adx_value(0), _Side(0);
_Side = -1;
settotalbar(maxlist(14,6) * 13 + 8);
DirectionMovement(Length, pdi_value, ndi_value, adx_value);
if _Side = 1 and adx_value Crosses above Threshold then ret = 1
else if _Side = -1 and adx_value Crosses below Threshold then ret = 1;