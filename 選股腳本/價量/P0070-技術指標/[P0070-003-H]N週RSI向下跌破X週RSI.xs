{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N週RSI向下跌破X週RSI
// 顯示名稱: [6]週RSI向下跌破[12]週RSI
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 10,12,14
// 
input: _p1(6), _p2(12);
settotalbar(maxlist(_p1,_p2) * 10);
Value1 = RSI(Close, _p1);
Value2 = RSI(Close, _p2);
if Value1 Crosses Below Value2 then ret=1;