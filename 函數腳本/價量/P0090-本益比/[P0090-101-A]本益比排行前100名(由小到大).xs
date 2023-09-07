{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 本益比排行前100名(由小到大)
// 顯示名稱: 本益比排行前100名(由小到大)
// 執行頻率: 日
// 
// 
value1 = GetField("本益比");
if value1 > 0 then retval = value1 else return;