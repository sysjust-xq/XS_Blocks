{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日成交量週轉率前100名
// 顯示名稱: [5]日週轉率前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60
// 
input:_p1(5,numeric);
settotalBar(_p1+3);
If GetField("發行張數(張)")<> 0 then 
value1 = summation(getfield("成交量"),_p1)/GetField("發行張數(張)")*100;
retval = value1;