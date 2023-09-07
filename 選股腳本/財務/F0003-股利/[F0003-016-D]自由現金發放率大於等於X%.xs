{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自由現金發放率大於等於X%
// 顯示名稱: 自由現金發放率 >= [100]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0,50,100,150,200
// 
input:_p1(100);
SetTotalBar(2);
value1= getField("股利合計");
value2 = getField("每股自由現金流量");
value3 = 100 * value1 / value2;
if value3 >= _p1 then ret=1;