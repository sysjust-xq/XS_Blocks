{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 股利排行前100名
// 顯示名稱: [現金股利]排行前100名
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[股利],1=[現金股利],2=[股票股利]
// 
input: _p1(1,numeric);
if _p1 = 0 then value1 = GetField("股利合計");
if _p1 = 1 then value1 = GetField("現金股利");
if _p1 = 2 then value1 = GetField("股票股利");
if value1 > 0 then retval = value1 else return;