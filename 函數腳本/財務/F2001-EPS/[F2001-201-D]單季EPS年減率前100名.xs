{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 單季EPS年減率前100名
// 顯示名稱: 單季EPS年減率前100名
// 執行頻率: 季
// 
// 
value1 = GetField("EPS");
value2 = GetField("EPS")[4];
value3 = 100 * (value1 - value2) /value2;
if value2 > value1 then return;
retval = value3;