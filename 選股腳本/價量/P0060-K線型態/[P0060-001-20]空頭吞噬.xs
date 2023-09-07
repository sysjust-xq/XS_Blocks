{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 空頭吞噬
// 顯示名稱: 空頭吞噬
// 執行頻率: 日
// 
// 
settotalbar(3);                                                                
SetBarFreq("AD");
condition1= (close[1] - open[1]) > (high[1] - low[1]) * 0.5;        //狀況1:        前期實體紅棒
condition2= high - low > (high[1] - low[1]) * 2;                        //狀況2:        當期波動倍曾
condition3= (open - close) > (high - low) * 0.75;                        //狀況3:        當期黑K棒
condition4=open > close[1] and close < low[1];                        //狀況4:        開高下跌破昨低
IF condition1 and condition2 and condition3 and  condition4
THEN RET=1;