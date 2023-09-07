{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: MTM背離
// 顯示名稱: MTM背離
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: Length(10);
settotalbar(maxlist(10,6) + 8);
value1=momentum(close,Length);
ret = linearregslope(close,6)<0 and linearregslope(value1,6)>0;