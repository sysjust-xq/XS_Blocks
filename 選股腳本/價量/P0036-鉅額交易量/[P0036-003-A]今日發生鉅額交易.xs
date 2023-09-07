{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日發生鉅額交易
// 顯示名稱: 今日發生鉅額交易
// 執行頻率: 日
// 
// 
SetTotalBar(2);
If GetField("鉅額交易量")> 0 then ret = 1;