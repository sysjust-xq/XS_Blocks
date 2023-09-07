{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 沒有配發股利
// 顯示名稱: 沒有配發[股利]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[股利],1=[現金股利],2=[股票股利]
// 
input: _p1(0);
input: _p2(1);
if _p1 = 0 then value1 = GetField("股利合計");
if _p1 = 1 then value1 = GetField("現金股利");
if _p1 = 2 then value1 = GetField("股票股利");
if value1 = 0 then ret=1;