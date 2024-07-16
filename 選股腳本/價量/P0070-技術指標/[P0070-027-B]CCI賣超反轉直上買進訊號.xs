{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: CCI賣超反轉直上買進訊號
// 顯示名稱: CCI賣超反轉直上買進訊號
// 執行頻率: 日
// 
// 
Variable: Length(14), AvgLength(9), OverSold(-200),cciValue(0), cciMAValue(0),KPrice(0);
SetTotalBar(27);
cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);
if cciMAValue Crosses Below OverSold then KPrice = H; 
if Close crosses over KPrice and KPrice[1] <> 0 then ret=1;