{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數佔上市成交量大於兩成
// 顯示名稱: 櫃買指數佔上市成交量大於兩成
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(7);
ret = average(GetSymbolField("otc.tw","成交量")/GetSymbolField("tse.tw","成交量")*100,5)  >= 20;