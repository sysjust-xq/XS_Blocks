{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日MTM動能轉強
// 顯示名稱: 近[10]日MTM動能轉強
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20
// 
Input:_p1(10);                           
settotalBar(_p1+2);                                                                                                                            
If linearregslope(momentum(C,_p1),8)>0 then ret = 1;