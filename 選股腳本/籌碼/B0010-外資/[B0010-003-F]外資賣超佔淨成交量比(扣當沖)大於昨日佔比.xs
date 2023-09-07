{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外資賣超佔淨成交量比(扣當沖)大於昨日佔比
// 顯示名稱: 外資賣超佔淨成交量比(扣當沖) > 昨日佔比
// 執行頻率: 日
// 
// 
SetTotalBar(2);  
If GetField("外資買賣超")/ (V-GetField("當日沖銷張數")) < 
GetField("外資買賣超")[1]/(V-GetField("當日沖銷張數")[1])  and GetField("外資買賣超") <0 
then ret = 1;
outputField1(GetField("外資買賣超")/ (V-GetField("當日沖銷張數"))*100);
outputField2(GetField("外資買賣超")[1]/ (V-GetField("當日沖銷張數")[1])*100);