{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股東人數較上週增加
// 顯示名稱: 股東人數較上週增加
// 執行頻率: 週
// 
// 
SetTotalBar(2); 
Value1 = GetField("總持股人數");
if Value1 > GetField("總持股人數")[1] then ret=1; 
OutputField(1, Value1);