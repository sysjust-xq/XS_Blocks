{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N點後，出現暴大量
// 顯示名稱: [10]點後，出現暴大量
// 執行頻率: 1分(逐筆洗價)
// 
// _p1參數: HH整點後
// _p1數值: 10,11,12
// 
input:_p1(10);
var:percent(100),Length(180),atVolume(500),AvgVolume(0);
var:KBarOfDay(0);
settotalbar(182);
if _p1 = 10 then Length =  60
else if _p1 = 11 then Length = 120
else if _p1 = 12 then Length = 180
else raiseRunTimeError("p1參數均線選項超過勾選範圍，請除錯");
if getfieldDate("Date")<>getfieldDate("Date")[1] then KBarOfDay = 0 else KBarOfDay+=1;
AvgVolume=Average(volume,Length);
ret = KBarOfDay >= Length - 1 and Volume > atVolume and  volume > AvgVolume *(2);