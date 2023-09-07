{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: DMI-Osc跌破N
// 顯示名稱: DMI-Osc跌破[0]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,10,20,30,50
// 
input:length(14,"期數"),_p1(0);
settotalbar(maxlist(length,6) * 13 + 8);
variable: pdi_value(0), ndi_value(0), adx_value(0);
DirectionMovement(Length, pdi_value, ndi_value, adx_value);
value1=pdi_value-ndi_value;
If value1 cross below _p1 then ret = 1;