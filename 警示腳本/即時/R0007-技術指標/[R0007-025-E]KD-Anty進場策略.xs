{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: KD-Anty進場策略
// 顯示名稱: KD-Anty進場策略
// 執行頻率: 日(逐筆洗價)
// 
// 
variable:rsv1(0),k1(0),d1(0);
stochastic(9,3,3,rsv1,k1,d1);
ret = linearregslope(k1,10)>0 and linearregslope(d1,10)>0 and k1[10]>d1[10] and k1 crosses over d1;