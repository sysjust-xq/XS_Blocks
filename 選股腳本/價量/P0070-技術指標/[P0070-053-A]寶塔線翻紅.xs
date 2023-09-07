{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 寶塔線翻紅
// 顯示名稱: 寶塔線翻紅
// 執行頻率: 日
// 
// 
settotalBar(4+2);
ret = barslast(close crosses over highest(high[1],3))=0;