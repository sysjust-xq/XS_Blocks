{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: N日成交值增幅前100名
// 顯示名稱: [5]日成交值增幅前100名
// 執行頻率: 日
// 
// 過濾基期低於1000萬股票
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60,120,240
// 
input:_p1(5,numeric);
if GetField("成交金額(元)")[_p1] = 0 then return;
value1 = RateOfChange(GetField("成交金額(元)"),_p1);
if value1 > 0 then retval = value1 else return;