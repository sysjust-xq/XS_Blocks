{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季每股自由現金流量小於X元
// 顯示名稱: 單季每股自由現金流量 < [1]元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,0.5,1,5,10
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("每股自由現金流量")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);