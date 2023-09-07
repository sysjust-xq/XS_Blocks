{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自由現金流量佔市值比重(較前期或去年同期)增加
// 顯示名稱: 自由現金流量佔市值比重[較前期]增加
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1=[較前期],4=[較去年同期]
// 
input: _p1(1);
value1 = Summation(GetField("自由現金流量"),4) /  GetField("總市值(億)");
value2 = Summation(GetField("自由現金流量")[_p1],4) /  GetField("總市值(億)")[_p1];
if value1 > value2 then ret=1;