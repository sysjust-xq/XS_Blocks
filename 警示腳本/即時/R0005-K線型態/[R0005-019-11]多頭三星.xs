{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 多頭三星
// 顯示名稱: 多頭三星
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalbar(3);                                                        
condition1= open > open[1] and open[2] > open[1];        //狀況1:        開盤價排列
condition2= high > high[1] and high[2] > high[1];                //狀況2:        最高價排列
condition3= low > low[1] and low[2] > low[1];                //狀況3:        最低價排列
condition4= close > close[1] and close[2] > close[1];        //狀況4:        收盤價排列
IF condition1 and condition2 and condition3 and        condition4
THEN RET=1;