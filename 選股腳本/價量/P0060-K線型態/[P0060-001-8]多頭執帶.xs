{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 多頭執帶
// 顯示名稱: 多頭執帶
// 執行頻率: 日
// 
// 
settotalbar(3);                                                                                                                                
SetBarFreq("AD");
condition1= close > open;                                                        //狀況1:        
condition2= (Close - Open) > (high - low) * 0.9;                //狀況2:        
condition3= Close > Close[1] + high[1] - low[1];                //狀況3:        
IF condition1 and condition2 and condition3
THEN RET=1;