{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金或股票股利比重小於X%
// 顯示名稱: [現金股利]比重 < [50]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[現金股利],1=[股票股利]
// _p2參數: 
// _p2數值: 10,30,50,70,90
// 
settotalBar(2);
input: _p1(0);
input: _p2(50);
if _p1 = 0 then value1 = GetField("現金股利");
if _p1 = 1 then value1 = GetField("股票股利");
If GetField("股利合計")<> 0 and  value1/GetField("股利合計") <_p2*0.01 then ret = 1;
outputField1(value1/GetField("股利合計"));