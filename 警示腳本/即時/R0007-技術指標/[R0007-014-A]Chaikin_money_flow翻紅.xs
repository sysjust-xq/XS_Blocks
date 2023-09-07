{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: Chaikin_money_flow翻紅
// 顯示名稱: Chaikin money flow翻紅
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:s1(5),l1(20),ad(0),chai(0);
settotalBar(22);
if h-l<> 0 then ad=((c-l)-(h-c))/(h-l)*volume;
chai=average(ad,s1)-average(ad,l1);
ret = chai crosses over 0 and linearregangle(chai,5)>20;