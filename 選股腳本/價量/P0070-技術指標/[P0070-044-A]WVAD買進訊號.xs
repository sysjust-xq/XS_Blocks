{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: WVAD買進訊號
// 顯示名稱: WVAD買進訊號
// 執行頻率: 日
// 
// 
var:length(14),wvad(0);
settotalBar(14+2);
value1=close-open;
value2=high-low;
if high<>low then
	value3=value1/value2*volume
else
	value3=value3[1];
wvad=summation(value3,length);
ret = wvad cross Above 0;