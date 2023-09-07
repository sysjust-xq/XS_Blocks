{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 累計月營收年增率前100名
// 顯示名稱: 累計月營收年增率前100名
// 執行頻率: 月
// 
// 
value1 = GetField("累計營收年增率");
if value1 <= 0 then return;
retval = value1;