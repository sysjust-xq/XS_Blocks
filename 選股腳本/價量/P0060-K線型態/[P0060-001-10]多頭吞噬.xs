{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 多頭吞噬
// 顯示名稱: 多頭吞噬
// 執行頻率: 日
// 
// 
settotalbar(3);        
SetBarFreq("AD");
condition1=(open[1] - close[1]) > (high[1] - low[1]) * 0.75;        //狀況1:        前期出黑K棒
condition2=(close - open) > (high - low) * 0.75;                        //狀況2:        當期紅棒
condition3=high > high[1];                                                                //狀況3:        高過昨高
condition4=open < low[1];                                                                //狀況4:        開低破昨低        
IF condition1 and  condition2 and condition3 and        condition4
THEN RET=1;