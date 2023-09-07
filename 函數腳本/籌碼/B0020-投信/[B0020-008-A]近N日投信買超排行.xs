{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日投信買超排行
// 顯示名稱: 近[5]日投信買超前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(5,numeric);
SetTotalBar(2); 
Value1 = Summation(GetField("投信買賣超"), _p1);
if Value1 > 0 then retval = value1 else return;