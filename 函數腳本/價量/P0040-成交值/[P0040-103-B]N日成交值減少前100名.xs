{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: N日成交值減少前100名
// 顯示名稱: [5]日成交值減少前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60,120,240
// 
input:_p1(5,numeric);
value1 = GetField("成交金額(元)") -  GetField("成交金額(元)")[_p1];
if value1 < 0 then retval = absvalue(value1) else return;