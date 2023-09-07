{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 每股淨值衰退率前100名
// 顯示名稱: 每股淨值衰退率前100名
// 執行頻率: 季
// 
// 
value1 = RateOfChange(GetField("每股淨值(元)"), 4);
if value1 >= 0 then return;
retval = absvalue(value1);