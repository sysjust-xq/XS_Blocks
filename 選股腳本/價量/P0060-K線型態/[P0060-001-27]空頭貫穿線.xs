{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 空頭貫穿線
// 顯示名稱: 空頭貫穿線
// 執行頻率: 日
// 
// 
settotalbar(3);                                                                                                                                                                                                                        
SetBarFreq("AD");
if close[1]>open[1]*1.03
//前一日長紅
and close*1.03<open
//今日長黑
and close<low*1.005
//今日幾乎收最低點
and open>open[1]
and close<close[1]
then ret=1;