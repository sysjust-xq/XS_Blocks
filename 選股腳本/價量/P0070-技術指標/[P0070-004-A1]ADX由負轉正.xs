{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: ADX由負轉正
// 顯示名稱: ADX趨勢反轉向上
// 執行頻率: 日
// 
// 
input: Length(14,"期數");
variable: pdi_value(0), ndi_value(0), adx_value(0);
DirectionMovement(Length, pdi_value, ndi_value, adx_value);
SetTotalBar(Length * 4);
value1=average(adx_value,5);
if linearregslope(value1,20)<0
//有一陣子ADX的趨勢向下
and linearregslope(value1,10)cross over 0
//但近期的ADX趨勢轉向上
then ret=1;