{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 稅前息前淨利成長率前100名
// 顯示名稱: 稅前息前淨利成長率前100名
// 執行頻率: 季
// 
// 
value1 = RateOfChange(GetField("稅前息前淨利"), 4);
if value1 <= 0 then return;
retval = value1;