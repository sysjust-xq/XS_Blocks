{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: CCI超賣後回昇
// 顯示名稱: CCI超賣後回昇
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: Length(14), AvgLength(9), OverSold(-200),cciValue(0), cciMAValue(0);
SetTotalBar(16);
cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);
Ret = cciMAValue Crosses Below OverSold;