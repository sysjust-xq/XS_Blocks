{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出佔營運現金流量比重(較前期或去年同期或四季合計較去年同期)增加
// 顯示名稱: 資本支出佔營運現金流量比重[較前期]增加
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[較前期],1=[較去年同期],2=[四季合計較去年同期]
// 
input: _p1(0);

switch _p1 begin
case 0: 
   value1 = GetField("資本支出金額") /  GetField("來自營運之現金流量");
   value2 = GetField("資本支出金額")[1] /  GetField("來自營運之現金流量")[1];
case 1:
   value1 = GetField("資本支出金額") /  GetField("來自營運之現金流量");
   value2 = GetField("資本支出金額")[4] /  GetField("來自營運之現金流量")[4];
case 2:
   value1 = Summation(GetField("資本支出金額"),4) /  Summation(GetField("來自營運之現金流量"),4);
   value2 = Summation(GetField("資本支出金額"),4)[4] /  Summation(GetField("來自營運之現金流量"),4)[4];
end;
if value1 > value2 then ret=1;