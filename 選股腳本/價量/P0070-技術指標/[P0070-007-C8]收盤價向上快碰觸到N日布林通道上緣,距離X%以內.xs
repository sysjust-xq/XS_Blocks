{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價向上快碰觸到N日布林通道上緣,距離X%以內
// 顯示名稱: 收盤價向下快碰觸到[20]日布林通道下緣，距離[1]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// _p2參數: 
// _p2數值: 0,0.5,1,3,5
// 
Input:_p1(20), BBand(2, "通道"),_p2(1);
SetBarFreq("AD");
SetTotalBar(_p1+2);
Value1 = bollingerband(Close, _p1, 1 *BBand);
If c > value1*(1-(0.01*_p2)) and c <value1 then ret = 1;
outputField1(Value1,"布林上緣");
outputField12(value1*(1-(0.01*_p2)),"布林上緣N%以下");