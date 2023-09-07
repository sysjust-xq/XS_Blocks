{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: MTM突破X
// 顯示名稱: MTM突破[10]
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: MTM的突破數值
// _p1數值: 5,10,20
// 
Input: _p1(10);
Var:_Side(1);
settotalbar(maxlist(_p1,6) + 8);
Value1 = Momentum(Close, _p1);
if _Side = 1 and Value1 Crosses Above 0 then ret = 1
else if _Side = -1 and Value1 Crosses below 0 then ret =1;