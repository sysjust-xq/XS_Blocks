{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 正在實施庫藏股的股票
// 顯示名稱: 正在實施庫藏股的股票
// 執行頻率: 日
// 
// 
SetTotalBar(3); 
value1 = GetField("庫藏股開始日期");
value2 = GetField("庫藏股結束日期");
if value1 <= date and date <= value2 then ret=1;