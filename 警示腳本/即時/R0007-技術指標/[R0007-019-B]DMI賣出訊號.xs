{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: DMI賣出訊號
// 顯示名稱: DMI出現賣出訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:Length(14);
Var:_Side(-1);//1為買進訊號。-1為賣出訊號。
settotalbar(maxlist(14,6) * 13 + 8);
variable: pdi(0), ndi(0), adx_value(0);
DirectionMovement(Length, pdi, ndi, adx_value);
if _Side = 1 and pdi>pdi[1] and ndi<ndi[1] and pdi crosses over ndi then ret = 1
else if _Side = -1 and pdi<pdi[1] and ndi>ndi[1] and pdi crosses below ndi then ret = 1;