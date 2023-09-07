{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 主力近N日賣超佔淨成交量(扣當沖)大於等於X%
// 顯示名稱: 主力近[5]日賣超佔淨成交量(扣當沖) >=[15]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 1,2,3,5,10,15,20,25,30
// 
Input:_p1(5),_p2(15);   
SetTotalBar(3);                 
If 100*Summation(GetField("主力買賣超張數"),_p1)/Summation(V-GetField("當日沖銷張數"),_p1) <=(_p2*-1) and 
Summation(GetField("主力買賣超張數"),_p1)<0 then ret = 1;
outputField1(100*Summation(GetField("主力買賣超張數"),_p1)/Summation(V-GetField("當日沖銷張數"),_p1));