{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日成交量增幅前100名
// 顯示名稱: [5]日成交量增幅前100名
// 執行頻率: 日
// 
// 過濾基期低於50張的股票
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60
// 
input: _p1(5,numeric);
if Volume[_p1] = 0 then return;
value1 = RateOfChange(Volume, _p1);
if value1 > 0 then retval = value1 else return;