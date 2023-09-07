{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 空頭流星
// 顯示名稱: 空頭流星
// 執行頻率: 日
// 
// 
settotalbar(3);                                                
SetBarFreq("AD");
condition1=open > close[1] and close < open;                        //狀況1:        開高且收黑
condition2=(close[1] - open[1]) > (high[1] - low[1]) * 0.75;        //狀況2:        前期收實體紅K棒
condition3=close[1] > close[2];                                                        //狀況3:        當期收漲
condition4=(high - open) > (open - close) * 2;                        //狀況4:        留長上影線
IF condition1 and condition2 and condition3 and        condition4
THEN RET=1;