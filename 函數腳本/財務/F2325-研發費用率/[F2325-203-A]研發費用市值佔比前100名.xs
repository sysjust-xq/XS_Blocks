{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 研發費用市值佔比前100名
// 顯示名稱: 研發費用市值佔比前100名
// 執行頻率: 季
// 
// 
value1 = Summation(GetField("研發費用"), 4);
value2 = GetField("總市值(億)");
retval = value1 / value2;