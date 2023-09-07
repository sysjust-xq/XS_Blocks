{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: ADX由負轉正
// 顯示名稱: ADX趨勢反轉向上
// 執行頻率: 日(逐筆洗價)
// 
// 
var: Length(14), Threshold(25), pdi_value(0), ndi_value(0), adx_value(0);
settotalbar(maxlist(14,6) * 13 + 8);
DirectionMovement(Length, pdi_value, ndi_value, adx_value);
value1=average(adx_value,5);
condition1 = linearregslope(value1,20)<0;
condition2 = linearregslope(value1,10) cross over 0;
ret = condition1 and condition2;