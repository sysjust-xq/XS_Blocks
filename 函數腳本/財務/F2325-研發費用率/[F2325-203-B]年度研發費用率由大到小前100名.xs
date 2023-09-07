{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 年度研發費用率由大到小前100名
// 顯示名稱: 年度研發費用率由大到小前100名
// 執行頻率: 年
// 
// 
value1 = GetField("研發費用率");
if value1 <= 0 then return;
retval = value1;