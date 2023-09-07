{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: (最近一季或近四季合計)營運現金流量對淨利比小於X%
// 顯示名稱: [最近一季]營運現金流量對淨利比 < [50]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1=[最近一季],4=[近四季合計]
// _p2參數: 
// _p2數值: 50,100,150,200,300
// 
input: _p1(1);
input: _p2(50);
If _p1 = 1 and (GetField("來自營運之現金流量")/ GetField("本期稅後淨利"))*100 <_p2 then ret = 1;
If _p1 = 4 and (Summation(GetField("來自營運之現金流量"), _p1)/Summation(GetField("本期稅後淨利"), _p1))*100 <_p2 then ret = 1;
outputField1((GetField("來自營運之現金流量")/ GetField("本期稅後淨利"))*100,"近一季");
outputField2((Summation(GetField("來自營運之現金流量"), _p1)/Summation(GetField("本期稅後淨利"), _p1))*100,"近四季");