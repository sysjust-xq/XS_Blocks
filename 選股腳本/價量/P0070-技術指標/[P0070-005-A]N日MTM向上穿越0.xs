{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日MTM向上穿越0
// 顯示名稱: [5]日MTM向上穿越0
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20
// 
Input: _p1(5);
SetBarFreq("AD");
settotalbar(maxlist(_p1,6) + 8);
Value1 = Momentum(Close, _p1);
ret = Value1 Crosses Above 0;