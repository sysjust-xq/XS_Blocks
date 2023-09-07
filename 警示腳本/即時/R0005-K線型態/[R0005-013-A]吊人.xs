{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 吊人
// 顯示名稱: 吊人
// 執行頻率: 1分(非逐筆洗價)
// 
// 
settotalbar(3);                                                
condition1=open = High and close < open;                //狀況1:        開高收低留黑棒
condition2=(high - low) > 2 * (high[1] - low[1]);        //狀況2:        波動倍增
condition3=(close - low) > (open - close) * 2;                //狀況3:        下影線為實體兩倍以上
IF condition1 and condition2 and condition3
THEN RET=1;