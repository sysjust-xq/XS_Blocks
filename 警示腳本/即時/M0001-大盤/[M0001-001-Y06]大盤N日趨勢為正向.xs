{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤N日趨勢為正向
// 顯示名稱: 大盤[5]日趨勢為正向
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的趨勢期數
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
Input:_p1(5);
Var:_Side(1);//正向=1、負向=-1

SettotalBar(_p1+10);

value1 = average(close,_p1);
Condition1 = _Side * (close - value1) > 0;
Condition2 =  _Side * (value1 - value1[1]) > 0;

if Condition1 and Condition2 then ret = 1;