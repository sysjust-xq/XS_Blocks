{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 夏普指數(Sharpe)小於0
// 顯示名稱: 夏普指數(Sharpe) < 0
// 執行頻率: 日
// 
// 
value1 = GetField("sharpe");
if value1 < 0 then ret=1;
OutputField(1, value1, 2, "Sharpe");