{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: MFO資金流震盪指標谷底回升
// 顯示名稱: MFO資金流震盪指標谷底回升
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(20);
settotalBar(22);
if range <> 0 and range[1] <> 0 then value1= ((high-low[1])-(high[1]-low))/((high-low[1])+(high[1]-low))*volume;
if summation(volume,period) <> 0 then value2= summation(value1,period)/summation(volume,period);
ret = value2 crosses over -0.5;