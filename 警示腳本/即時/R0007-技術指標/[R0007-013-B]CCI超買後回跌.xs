{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: CCI超買後回跌
// 顯示名稱: CCI超買後回跌
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: Length(14), AvgLength(9), Overbought(200),cciValue(0), cciMAValue(0);
settotalBar(16);
cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);
Ret = cciMAValue Crosses Above OverBought;