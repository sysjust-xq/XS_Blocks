{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: KST趨勢確認
// 顯示名稱: KST趨勢確認
// 執行頻率: 日(逐筆洗價)
// 
// 
variable:kst(0);
settotalBar(60);
kst=callfunction("KST確認指標");
ret = kst crosses over -50;