{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: KO賣出訊號
// 顯示名稱: KO賣出訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
var: Length1(34),Length2(55),ko(0);   
settotalBar(57);
ko = callfunction("KO成交量擺盪指標", Length1, Length2);
value1=average(ko,3);
value2=average(ko,13);
ret = value1 crosses under value2;