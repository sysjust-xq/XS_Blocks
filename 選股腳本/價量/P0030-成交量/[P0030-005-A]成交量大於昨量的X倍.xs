{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 成交量大於昨量的X倍
// 顯示名稱: 成交量 > 昨量的[2]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,1,1.5,2,2.5
// 
input:_p1(2);
SetTotalBar(2);
IF getField("成交量") > getField("成交量")[1]* _p1 then ret = 1;