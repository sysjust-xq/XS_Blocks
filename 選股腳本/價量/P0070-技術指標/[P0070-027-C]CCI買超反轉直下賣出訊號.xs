{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: CCI買超反轉直下賣出訊號
// 顯示名稱: CCI買超反轉直下賣出訊號
// 執行頻率: 日
// 
// 
Variable: Length(14), AvgLength(9), OverSold(-200),cciValue(0), cciMAValue(0),KPrice(0);
SetTotalBar(27);
cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);
if cciMAValue Crosses Above OverSold then KPrice = L; 
if Close crosses below KPrice and KPrice[1] <> 0 then ret=1;