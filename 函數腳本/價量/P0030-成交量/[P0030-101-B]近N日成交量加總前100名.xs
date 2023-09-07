{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日成交量加總前100名
// 顯示名稱: [5]日成交量加總前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60
// 
input:_p1(5,numeric);
value1 = summation(Volume, _p1);
retval = value1;