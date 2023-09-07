{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 孤島晨星
// 顯示名稱: 孤島晨星
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalbar(4);  
condition1 = low>high[1]*1.001 ; 
condition2 = high[1]<(low[3]*0.999);
If condition1 and condition2 then ret = 1;