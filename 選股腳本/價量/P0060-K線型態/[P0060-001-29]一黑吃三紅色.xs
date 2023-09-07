{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 一黑吃三紅色
// 顯示名稱: 一黑吃三紅
// 執行頻率: 日
// 
// 
settotalbar(3);                                                                                                                                                                                                                        
SetBarFreq("AD");
If c < o and trueall(c[1]>o[1],3)
and c<lowest(l[1],3) then ret = 1;