{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: DMI-Osc突破X
// 顯示名稱: DMI-Osc突破[0]
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: DMI-Osc的突破數值
// _p1數值: 0,10,20,30,50
// 
Var:length(14);
Input:_p1(0);
Var:_Side(1);
variable: pdi_value(0), ndi_value(0), adx_value(0);
settotalbar(maxlist(14,6) * 13 + 8);
DirectionMovement(14, pdi_value, ndi_value, adx_value);
value1=pdi_value-ndi_value;
If _Side = 1 and value1 cross Above _p1 then ret = 1 
else if _Side = -1 and value1 cross below _p1 then ret = 1;