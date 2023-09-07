{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 券資比排行
// 顯示名稱: 券資比前100名
// 執行頻率: 日
// 
// 
value1 = GetField("券資比");
if value1 <= 0 then return;
retval = value1;