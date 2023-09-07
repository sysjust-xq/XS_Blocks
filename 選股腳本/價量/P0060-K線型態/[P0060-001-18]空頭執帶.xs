{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 空頭執帶
// 顯示名稱: 空頭執帶
// 執行頻率: 日
// 
// 
settotalbar(3);        
SetBarFreq("AD");
condition1= (open - close) > (high - low) * 0.8;                //狀況1:        實體黑K棒
condition2= close < close[1] - (high[1] - low[1]);                //狀況2:        波動向下放大
IF condition1 and  condition2
THEN RET=1;