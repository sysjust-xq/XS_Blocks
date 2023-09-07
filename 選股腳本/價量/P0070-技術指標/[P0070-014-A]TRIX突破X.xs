{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: TRIX突破X
// 顯示名稱: TRIX突破[0]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,10,20,30,50
// 
input:_p1(0);
value1 = TRIX(Close, 9);
settotalBar(10*3);
If value1 cross above _p1 then ret = 1;