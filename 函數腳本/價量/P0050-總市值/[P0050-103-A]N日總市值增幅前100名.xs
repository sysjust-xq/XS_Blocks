{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: N日總市值增幅前100名
// 顯示名稱: [5]日總市值增幅前100名
// 執行頻率: 日
// 
// 過濾基期<=5億的股票
// _p1參數: 
// _p1數值: 1,5,10,50,100,120,200,240
// 
input:_p1(5,numeric);
value1 =  RateOfChange(GetField("總市值(億)"),_p1);
if value1 > 0 then retval = value1 else return;