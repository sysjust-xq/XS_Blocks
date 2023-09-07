{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: RSI死亡交叉
// 顯示名稱: [6]日RSI向下跌破[12]日RSI
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的短RSI期數
// _p1數值: 3,6,12
// _p2參數: 日的長RSI期數
// _p2數值: 10,12,14
// 
input:_p1(6);
input:_p2(12);
Var:_Side(-1);//1為黃金交叉。-1為死亡交叉。
settotalbar(maxlist(_p1,_p2) * 10);
Value1 = RSI(Close, _p1);
Value2 = RSI(Close, _p2);
if _Side = 1 and Value1 Crosses Above Value2 then ret=1
else if _Side = -1 and Value1 Crosses below Value2 then ret = 1;