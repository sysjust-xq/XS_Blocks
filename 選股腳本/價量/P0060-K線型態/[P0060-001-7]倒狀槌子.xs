{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 倒狀槌子
// 顯示名稱: 倒狀槌子
// 執行頻率: 日
// 
// 
settotalbar(3);
SetBarFreq("AD");
condition1= (open[1] - close[1]) > (high[1] - low[1]) * 0.75;                //狀況1: 前期出長黑K棒
condition2= close[1] < close[2] - (high[2] - low[2]);                                //狀況2: 前期呈波動放大下跌
condition3= close > open and (high - close) > (close - open) * 2;        //狀況3: 收紅上影線
IF condition1 and  condition2 and condition3
THEN RET=1;