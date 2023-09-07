{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 負債比率減少前100名
// 顯示名稱: 負債比率減少前100名
// 執行頻率: 季
// 
// 
value1 = GetField("負債比率") - GetField("負債比率")[4] ;
if value1 >= 0 then return;
retval = absvalue(value1);