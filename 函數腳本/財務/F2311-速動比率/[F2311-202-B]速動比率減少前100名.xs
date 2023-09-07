{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 速動比率減少前100名
// 顯示名稱: 速動比率減少前100名
// 執行頻率: 季
// 
// 
value1 = GetField("速動比率") - GetField("速動比率")[4] ;
if value1 >= 0 then return;
retval = absvalue(value1);