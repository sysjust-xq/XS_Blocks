{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 月營收前100名
// 顯示名稱: 月營收前100名
// 執行頻率: 月
// 
// 
value1 = GetField("月營收");
if value1 <= 0 then return;
retval = value1;