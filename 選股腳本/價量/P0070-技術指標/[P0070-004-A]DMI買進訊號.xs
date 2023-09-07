{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: DMI買進訊號
// 顯示名稱: DMI出現買進訊號
// 執行頻率: 日
// 
// 
input:Length(14,"計算期數");
SetBarFreq("AD");
SetTotalBar(Length * 4);
variable: pdi(0), ndi(0), adx_value(0);
DirectionMovement(Length, pdi, ndi, adx_value);
if pdi>pdi[1] and ndi<ndi[1] and pdi crosses over ndi
then ret=1;