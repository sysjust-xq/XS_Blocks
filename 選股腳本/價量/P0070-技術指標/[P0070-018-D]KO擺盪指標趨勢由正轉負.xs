{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: KO擺盪指標趨勢由正轉負
// 顯示名稱: KO擺盪指標趨勢由正轉負
// 執行頻率: 日
// 
// 
input:_p1(50);
settotalBar(20+2);
If callfunction("KO成交量擺盪指標", 5, 20)[1]>0 and callfunction("KO成交量擺盪指標", 5, 20)< 0 then ret = 1;