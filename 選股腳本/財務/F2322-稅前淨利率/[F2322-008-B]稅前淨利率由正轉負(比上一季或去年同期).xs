{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 稅前淨利率由正轉負(比上一季或去年同期)
// 顯示名稱: 稅前淨利率由正轉負([比上一季])
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[比上一季],1=[比去年同期]
// 
input: _p1(0);
SetTotalBar(2);
if _p1 = 0 then value1 = 1 else value1 = 4;
value2 = GetField("稅前淨利率");
value3 = GetField("稅前淨利率")[value1];
if value3 > 0 and value2 < 0 then ret=1;
outputField1(value2);