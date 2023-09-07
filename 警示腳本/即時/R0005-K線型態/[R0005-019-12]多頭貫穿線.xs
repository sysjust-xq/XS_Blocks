{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 多頭貫穿線
// 顯示名稱: 多頭貫穿線
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalbar(3); 
if close[1]<open[1]*1.03
//前一日長黑
and close*1.03>open
//今日長紅
and close>low*1.005
//今日幾乎收最高點
and open<open[1]
and close>close[1]
then ret=1;