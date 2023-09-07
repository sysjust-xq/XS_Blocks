{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 營收月增率前100名
// 顯示名稱: 營收月增率前100名
// 執行頻率: 月
// 
// 
value1 = GetField("月營收月增率");
if value1 <= 0 then return;
retval = value1;