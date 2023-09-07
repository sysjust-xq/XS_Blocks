{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 股東權益報酬率成長前100名
// 顯示名稱: 股東權益報酬率成長前100名
// 執行頻率: 季
// 
// 
value1 = GetField("股東權益報酬率") - GetField("股東權益報酬率")[4] ;
if value1 <= 0 then return;
retval = value1;