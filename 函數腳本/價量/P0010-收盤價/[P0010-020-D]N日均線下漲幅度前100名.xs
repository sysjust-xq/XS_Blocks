{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: N日均線下漲幅度前100名
// 顯示名稱: [5]日均線下跌，均線變化幅度前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input:_p1(5,numeric);
settotalBar(1);
value1 = average(getfield("收盤價","AD"),_p1);
value2 = average(getfield("收盤價","AD")[1],_p1);
if value1 > value2 then return;
value3 = average(getfield("收盤價","AD")[_p1-1],_p1);
retval = -iff(value3 <> 0,(value1 / absvalue(value3) - sign(value3)) * 100,0);