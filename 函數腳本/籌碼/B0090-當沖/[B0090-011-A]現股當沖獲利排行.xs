{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 現股當沖獲利排行
// 顯示名稱: 現股當沖獲利金額前100名
// 執行頻率: 日
// 
// 
settotalBar(2);
value1 = GetField("現股當沖賣出金額")-GetField("現股當沖買進金額");
If GetField("現股當沖賣出金額")-GetField("現股當沖買進金額") > 0 then 
retval = value1;