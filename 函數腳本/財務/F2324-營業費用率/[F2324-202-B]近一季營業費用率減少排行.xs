{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近一季營業費用率減少排行
// 顯示名稱: 營業費用率減少前100名
// 執行頻率: 季
// 
// 
value1 = GetField("營業費用率") - GetField("營業費用率")[4] ;
if value1 >= 0 then return;
retval = absvalue(value1);