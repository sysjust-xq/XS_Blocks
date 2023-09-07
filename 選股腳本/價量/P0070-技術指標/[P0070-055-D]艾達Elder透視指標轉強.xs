{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 艾達Elder透視指標轉強
// 顯示名稱: 艾達(Elder)透視指標轉強
// 執行頻率: 日
// 
// 
settotalBar(30);													
Var:HEmaDiff(0),ElderForce(0);                                                                                                                                                  
Input:Len(12),AvgLen(5);  
HEmaDiff=High-XAverage(C,Len);                                                                                       
ElderForce=average(HEmaDiff,AvgLen);                                                                                                                                                                                                                     
If HEmaDiff Cross Over 3 then ret = 1;