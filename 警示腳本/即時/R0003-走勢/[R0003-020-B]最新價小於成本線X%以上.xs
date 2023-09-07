{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 最新價小於成本線X%以上
// 顯示名稱: 最新價 < 當日均價線[1]%以上
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 幅度的上限值
// _p1數值: 0,0.5,1,1.5,2,2.5,3
// 
input:_p1(1);
Var:_Side(-1);
settotalBar(2);
value1 = GetField("收盤價");
value2 = GetField("均價");
if _Side = 1 and value1 > value2*(1+(_p1/100)) then ret = 1
else if _Side = -1 and value1 < value2*(1-(_p1/100)) then ret=1;