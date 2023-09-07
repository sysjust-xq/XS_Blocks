{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 融券使用率排行
// 顯示名稱: 融券使用率前100名
// 執行頻率: 日
// 
// 
value1 = GetField("融券使用率");
if value1 <= 0 then return;
retval = value1;