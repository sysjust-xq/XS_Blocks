{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 空頭遭遇
// 顯示名稱: 空頭遭遇
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalbar(3);        
condition1= (close[1] - open[1]) > (high[1] -low[1]) * 0.5;        //狀況1:        前期實體紅棒
condition2= (open - close) > (high - low) * 0.5;                        //狀況2:        當期實體黑棒
condition3=open > high[1] and close > close[1];                        //狀況3:        開過昨高收守平盤        
IF condition1 and condition2 and condition3
THEN RET=1;