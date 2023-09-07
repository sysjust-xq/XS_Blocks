{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價小於N日布林通道下緣X%以上
// 顯示名稱: 收盤價小於[20]日布林通道下緣[1]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// _p2參數: 
// _p2數值: 0,0.5,1,3,5
// 
Input:_p1(20), BBand(2, "通道"),_p2(1);
SetBarFreq("AD");
SetTotalBar(_p1);
Value1 = bollingerband(Close, _p1, -1 *BBand);
If c < value1*(1-(0.01*_p2)) then ret = 1;