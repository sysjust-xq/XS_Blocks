{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度每股營業額小於X元
// 顯示名稱: 年度每股營業額 < [20]元
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 5,10,20,30
// 
input:_p1(20);
SetTotalBar(2); 
Value1 = GetField("每股營業額(元)");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 2, "每股營業額");