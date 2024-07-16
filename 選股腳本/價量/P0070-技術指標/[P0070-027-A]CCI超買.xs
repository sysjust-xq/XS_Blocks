{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: CCI超買
// 顯示名稱: CCI超買
// 執行頻率: 日
// 
// 
Var: Length(14), AvgLength(9), Overbought(100),cciValue(0), cciMAValue(0);
SetTotalBar(27);
cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);
Ret = cciMAValue Crosses Above OverBought;