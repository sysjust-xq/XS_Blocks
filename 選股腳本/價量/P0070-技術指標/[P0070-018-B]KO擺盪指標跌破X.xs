{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: KO擺盪指標跌破X
// 顯示名稱: KO擺盪指標跌破[50]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,10,20,30,50
// 
input:_p1(50);
settotalBar(20+2);
If callfunction("KO成交量擺盪指標", 5, 20)cross below _p1 then ret = 1;