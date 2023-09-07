{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 月營收年減率前100名
// 顯示名稱: 月營收年減率前100名
// 執行頻率: 月
// 
// 
value1 = GetField("月營收年增率");
if value1 >= 0 then return;
retval = absvalue(value1);