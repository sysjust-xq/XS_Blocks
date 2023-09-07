{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: MFO資金流震盪指標高檔跌破
// 顯示名稱: MFO資金流震盪指標高檔跌破
// 執行頻率: 日
// 
// 
Var:period(20);
settotalBar(22);
if range <> 0 and range[1] <> 0 then value1= ((high-low[1])-(high[1]-low))/((high-low[1])+(high[1]-low))*volume;
if summation(volume,period) <> 0 then value2= summation(value1,period)/summation(volume,period);
ret = value2 crosses below 0.5;