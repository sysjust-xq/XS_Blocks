{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股利近N年平均大於等於X元
// 顯示名稱: [現金股利]近[3]年平均 >= [1]元
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[股利],1=[現金股利],2=[股票股利]
// _p2參數: 
// _p2數值: 2,3,5,10
// _p3參數: 
// _p3數值: 1,2,3,5,10
// 
input: _p1(1);
input: _p2(3);
input: _p3(1);
if _p1 = 0 then value1 = Average(GetField("股利合計"), _p2);
if _p1 = 1 then value1 = Average(GetField("現金股利"), _p2);
if _p1 = 2 then value1 = Average(GetField("股票股利"), _p2);
if value1 >= _p3 then ret=1;
OutputField(1, value1, 2, "股利平均");