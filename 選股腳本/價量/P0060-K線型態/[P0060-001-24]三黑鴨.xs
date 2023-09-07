{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 三黑鴨
// 顯示名稱: 三黑鴨
// 執行頻率: 日
// 
// 
settotalbar(3);																											
SetBarFreq("AD");
condition1= (open - close) > (high - low) * 0.75;				//狀況1:	當期黑K棒
condition2= (open[1] - close[1]) > (high[1] - low[1]) * 0.75;	//狀況2:	前期黑K棒
condition3= (open[2] - close[2]) > (high[2] - low[2]) * 0.75;	//狀況3:	前前期黑K棒
condition4= close < close[1] and close[1] < close[2];			//狀況4:	連續下跌	

IF condition1 and condition2 and condition3 and condition4
THEN RET=1;