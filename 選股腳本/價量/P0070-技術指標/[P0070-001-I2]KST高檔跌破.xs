{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: KST高檔跌破
// 顯示名稱: KST高檔跌破
// 執行頻率: 日
// 
// 
variable:kst(0);
settotalBar(60);
kst=callfunction("KST確認指標");
ret = kst crosses below 50;