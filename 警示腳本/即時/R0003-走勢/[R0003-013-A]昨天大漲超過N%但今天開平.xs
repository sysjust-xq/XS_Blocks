{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 昨天大漲超過N%但今天開平
// 顯示名稱: 昨天大漲超過[7]%但今天開平
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 大漲幅度的下限值
// _p1數值: 5,6,7,8,9
// 
input:_p1(7);
SetBackBar(2, "D");
settotalBar(2);

condition1 = 100 * 1 * (GetField("收盤價","D")[1]/absvalue(GetField("參考價", "D")[1]) - sign(GetField("參考價", "D")[1])) >= _p1;
condition2 = GetField("開盤價","D") = GetField("收盤價", "D");

if condition1 and condition2 then ret = 1;