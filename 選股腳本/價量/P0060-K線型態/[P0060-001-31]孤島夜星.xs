{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 孤島夜星
// 顯示名稱: 孤島夜星
// 執行頻率: 日
// 
// 
settotalbar(2);  
condition1 = high<low[1]*0.999;
condition2 = low[1]> high[2]*1.001;
If condition1 and condition2 then ret = 1;