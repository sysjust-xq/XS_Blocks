{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日漲幅前100名
// 顯示名稱: 近[5]日漲幅前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20,60,120,240
// 
input:_p1(5,numeric);
value1 = RateOfChange(GetField("Close", "AD"), _p1);
if value1 > 0 then retval = value1 else return;