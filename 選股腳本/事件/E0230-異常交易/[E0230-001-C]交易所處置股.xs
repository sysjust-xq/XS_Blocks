{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 交易所處置股
// 顯示名稱: 交易所處置股
// 執行頻率: 日
// 
// 
SetTotalBar(3); 
condition1 = GetSymbolInfo("處置股");
if condition1 then ret=1;