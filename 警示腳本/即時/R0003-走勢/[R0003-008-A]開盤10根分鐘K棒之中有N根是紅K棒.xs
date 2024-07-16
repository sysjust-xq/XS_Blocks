{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤10根分鐘K棒之中有N根是紅K棒
// 顯示名稱: 開盤10根分鐘K棒之中有[5]根是紅K棒
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 5,6,7
// 
input:_p1(5); //開盤起至少上漲期數
Var:_BeginKBar(10);//第幾根K棒時提醒
Var:_Side(1);//1=開盤N根紅K棒；-1=開盤N根黑K棒。
variable:KBarOfDay(0); 

if getfieldDate("Date")<>getfieldDate("Date")[1] then KBarOfDay = 0 else KBarOfDay+=1;
 
condition1 = KBarOfDay = _BeginKBar - 1;

if _Side = 1 then 
        condition2 = Countif(close>close[1] and close > open,KBarOfDay-1) >= _p1
else if _Side = -1 then
        condition2 = Countif(close<close[1] and close < open,KBarOfDay-1) >= _p1;

if condition1 and condition2 then ret=1;