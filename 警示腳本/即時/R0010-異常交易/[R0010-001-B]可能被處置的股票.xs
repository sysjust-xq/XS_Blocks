{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 可能被處置的股票
// 顯示名稱: 可能被處置的股票
// 執行頻率: 日(逐筆洗價)
// 
// 
SetTotalBar(3); 
condition1 = GetSymbolInfo("累計異常注意股");
if condition1 then ret=1;