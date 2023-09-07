{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自由現金流量營收比大於X%
// 顯示名稱: 自由現金流量營收比 > [0]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,10,20,30,50,80
// 
input:_p1(0); 
SetTotalBar(2); 
if GetField("自由現金流量營收比") >_p1 then ret=1;
OutputField(1,GetField("自由現金流量營收比"));