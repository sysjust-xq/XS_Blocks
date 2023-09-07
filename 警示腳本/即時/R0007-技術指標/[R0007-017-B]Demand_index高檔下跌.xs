{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: Demand_index高檔下跌
// 顯示名稱: Demand index高檔下跌
// 執行頻率: 日(逐筆洗價)
// 
// 
var: Length (10),WtCRatio(1), VolRatio(1), VolAvg(Volume), 
bu(1), sel(1), Sign1(+1), 
WghtClose(Close), AvgTR(High - Low), 
Constant(1), bures(1), selres(1), 
TempDI(1), DMI(1); 
settotalbar(12);
If CurrentBar = 1 then 
Begin 
VolAvg = Average(Volume, Length); 
End; 
WghtClose = (High + Low + Close + Close) * 0.25; 
AvgTR = Average (Highest (High, 2) - Lowest ( Low, 2), Length); 
VolAvg = ((VolAvg [1] * (Length - 1)) + Volume) / Length; 
If WghtClose <> 0 and WghtClose[1] <> 0 and 
AvgTR <> 0 and VolAvg <> 0 then 
Begin 
WtCRatio = (WghtClose - WghtClose[1]) / MinList(WghtClose,WghtClose[1]) ; 
VolRatio = Volume / VolAvg; 
Constant = ((WghtClose * 3) /AvgTR) * AbsValue (WtCRatio); 
If Constant > 88 then Constant = 88; 
Constant = VolRatio / ExpValue (Constant); 
If WtCRatio > 0 then 
Begin 
bu = VolRatio; 
sel = Constant; 
End 
Else 
Begin 
bu = Constant; 
sel = VolRatio; 
End; 
bures = ((bures [1] * (Length - 1)) + bu) / Length; 
selres = ((selres [1] * (Length - 1)) + sel) / Length; 
TempDI = +1; 
If selres > bures then 
Begin 
Sign1 = -1; 
If selres <> 0 then TempDI = bures / selres; 
End 
Else 
Begin 
Sign1 = +1; 
If bures <> 0 then TempDI = selres / bures; 
End; 
TempDI = TempDI * Sign1; 
If TempDI < 0 
then 
DMI = -1 - TempDI 
else 
DMI = +1 - TempDI ; 
End;
ret =  DMI crosses under 0;