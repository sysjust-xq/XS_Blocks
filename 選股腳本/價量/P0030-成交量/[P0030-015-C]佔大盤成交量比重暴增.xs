{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 佔大盤成交量比重暴增
// 顯示名稱: 佔大盤成交量比重暴增
// 執行頻率: 日
// 
// 
var:length(20),up1(0);
settotalBar(20);
value1=GetField("佔大盤成交量比","D");
up1 = bollingerband(value1, Length, 2 );
ret = value1 crosses over up1 and close>close[1] and close<close[1]*1.05;
//量暴增而且股價上漲
//但漲幅沒有非常大