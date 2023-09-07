{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 預估本益比(以近四季EPS估算)前100名(由小到大)
// 顯示名稱: 預估本益比(以近四季EPS估算)前100名(由小到大)
// 執行頻率: 日
// 
// 
SetTotalBar(20);
Value1 = GetField("收盤價","Q");
If GetField("發行張數(張)") <> 0 then
value2 = summation(GetField("本期稅後淨利","Q"),4)/((GetField("發行張數(張)")/1000));//近4季累積EPS
value3 = value1/value2;
if value3 > 0 then retval = value3 else return;