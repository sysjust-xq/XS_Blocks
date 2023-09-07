{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 多頭槌子
// 顯示名稱: 多頭槌子
// 執行頻率: 日
// 
// 
var:_Count(0);

condition2 = high<close*1.005;//幾乎收最高
condition3 = close>open;//陽線
condition4 = (open-low)>=2*(close-open);//下影線是實體的兩倍

if condition2 and condition3 and condition4 then ret = 1;