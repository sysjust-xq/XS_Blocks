{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: ADX由正轉負
// 顯示名稱: ADX趨勢反轉向下
// 執行頻率: 日
// 
// 將ADX放入線性回歸內
// 長期的趨勢是>0
// 短期趨勢向下穿越0
// 
input: Length(14,"期數"), Threshold(25,"穿越值");
variable: pdi_value(0), ndi_value(0), adx_value(0);
SetTotalBar(Length * 4);
DirectionMovement(Length, pdi_value, ndi_value, adx_value);
value1=average(adx_value,5);
if linearregslope(value1,20)>0
and linearregslope(value1,10)cross under 0
then ret=1;