{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自N日低點至今融資增加大於X張
// 顯示名稱: 自[100]日低點至今融資增加 > [5000]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,40,50,60,100,120
// _p2參數: 
// _p2數值: 100,200,300,500,1000,2000,5000,10000
// 
settotalBar(3);
input:_p1(100),_p2(5000);
if lowestbar(close,_p1)>50 and GetField("融資餘額張數")-GetField("融資餘額張數")[lowestbar(close,_p1)]>_p2
then ret=1;
outputField1( GetField("融資餘額張數"));
outputField2( GetField("融資餘額張數")[lowestbar(close,_p1)]);