{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: Beta(貝他值)排行前100名(由小到大)
// 顯示名稱: Beta(貝他值)排行前100名(由小到大)
// 執行頻率: 日
// 
// 
value1 = GetField("Beta");
if value1 >= 1 then retval=value1 else return;