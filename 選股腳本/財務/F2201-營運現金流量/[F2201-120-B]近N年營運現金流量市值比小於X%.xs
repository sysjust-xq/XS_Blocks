{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年營運現金流量市值比小於X%
// 顯示名稱: 近[10]年營運現金流量市值比 < [100]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 50,75,100,120,140,160,180,200
// 
input: _p1(10),_p2(100);
settotalBar(3);
value1 = Summation(GetField("來自營運之現金流量"),_p1) /  GetField("總市值(億)");
if value1 < _p2 then  ret=1;
outputField1(value1);