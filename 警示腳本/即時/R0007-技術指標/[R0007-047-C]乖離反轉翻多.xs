{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 乖離反轉翻多
// 顯示名稱: 乖離反轉翻多
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:Length(20);
Var:Ratio(21);
variable:KPrice(0);
settotalBar(22);
if close/average(close,Length)<= 1-Ratio/100 then KPrice = H;
ret = Close crosses over KPrice;