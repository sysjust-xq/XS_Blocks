{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日布林通道寬度大於X日平均值
// 顯示名稱: [20]日布林通道寬度大於[20]日平均值
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// _p2參數: 
// _p2數值: 20,30,50,60
// 
SetBarFreq("AD");
input:_p1(20),_p2(20);
SetTotalBar(_p2);
if bollingerbandwidth(Close,_p1,2,2)>average(bollingerbandwidth(Close,_p1,2,2),_p2)then ret=1;
outputField1(bollingerbandwidth(Close,_p1,2,2));