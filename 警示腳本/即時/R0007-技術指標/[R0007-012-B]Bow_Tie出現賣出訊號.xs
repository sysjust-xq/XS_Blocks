{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: Bow_Tie出現賣出訊號
// 顯示名稱: Bow Tie出現賣出訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(22);
if barslast(average(close,5) crosses under average(close,20))<=5
and trueall(close[1]>close[2],3)
and close crosses under close[1]*0.98
then ret=1;