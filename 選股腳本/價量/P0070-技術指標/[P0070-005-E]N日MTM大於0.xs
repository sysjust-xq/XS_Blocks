{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日MTM大於0
// 顯示名稱: [10]日MTM>0
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20
// 
Input:_p1(10);                           
settotalBar(_p1+2);                                                                                                                            
If momentum(C,_p1)>0 then ret = 1;