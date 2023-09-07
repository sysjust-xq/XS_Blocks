{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 三關價翻多
// 顯示名稱: 三關價翻多
// 執行頻率: 1分(非逐筆洗價)
// 
// 最新收盤價黃金交叉中關價時，即為三關價翻多。
// 中關價＝（昨日最高價＋昨日最低價）/ 2。
// 
// 
var:_p1(1);
var:_p2(1);
var:_p3(2);
SetBackBar(2, "D");
SetTotalBar(2);
value1 = (_p1 * getfield("最高價","D")[1] + _p2 * getfield("最低價","D")[1]) / _p3;
condition1 = 1 * (getfield("close") - value1) > 0;
condition2 = 1 * (getfield("close")[1] - value1) < 0;
ret = condition1 and condition2;