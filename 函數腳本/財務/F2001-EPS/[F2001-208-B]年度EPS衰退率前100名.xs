{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 年度EPS衰退率前100名
// 顯示名稱: 年度EPS衰退率前100名
// 執行頻率: 年
// 
// 
value1 = GetField("EPS");
value2 = GetField("EPS")[1];
value3 = 100 * (value1 - value2) /value2;
if value2 > value1 then return;
retval = value3;