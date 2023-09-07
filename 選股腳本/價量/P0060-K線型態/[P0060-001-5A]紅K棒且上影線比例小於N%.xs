{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 紅K棒且上影線比例小於N%
// 顯示名稱: 紅K棒且上影線比例<[1]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,1,1.5,2
// 
settotalBar(3);
Input:_p1(1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
If ((H-C) /(H-L)*10)<_p1 and c > o then ret = 1;
outputField1(((H-C) /(H-L)*10),"上影線");