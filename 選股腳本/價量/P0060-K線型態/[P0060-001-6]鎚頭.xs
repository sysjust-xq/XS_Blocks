{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 鎚頭
// 顯示名稱: 鎚頭
// 執行頻率: 日
// 
// 
settotalbar(3);        
SetBarFreq("AD");
condition1= close >= high and close > open;        //狀況1:        收高
condition2= (high - low) > 2 * (high[1] - low[1]); //狀況2:        波動放大
condition3= (open - low) > (close - open) * 2;     //狀況3:        長下影線
IF condition1 and  condition2 and condition3                                                                                                        
THEN RET=1;