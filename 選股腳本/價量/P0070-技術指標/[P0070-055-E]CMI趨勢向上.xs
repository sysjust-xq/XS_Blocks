{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: CMI趨勢向上
// 顯示名稱: CMI趨勢向上
// 執行頻率: 日
// 
// 
Input:Period(10);                                                                                                                                                                                                                                          
Var:CMI(0),AvgCMI(0);                            
settotalBar(Period+2);                                                      
CMI=100*(C-C[Period-1])/(Highest(H,Period)-Lowest(L,Period));        
AvgCMI=average(CMI,6);                                        
If trueall(CMI>=65,3) and AvgCMI>=81 then ret = 1;