{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日借券而不賣出累計張數排行
// 顯示名稱: 近[5]日借券而不賣出累計張數前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(5,numeric);
SetTotalBar(_p1+2);
value1 = GetField("借券餘額張數")-GetField("借券餘額張數")[_p1];
value2 = GetField("借券賣出餘額張數")-GetField("借券賣出餘額張數")[_p1];
value3 = value1 - value2; { 借券而沒賣出 }
if value3 > 0 then retval = value3 else return;