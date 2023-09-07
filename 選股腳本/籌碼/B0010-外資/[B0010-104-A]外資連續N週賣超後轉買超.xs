{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外資連續N週賣超後轉買超
// 顯示名稱: 外資連續[2]週賣超後轉為買超
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4
// 
input:_p1(2);

SetTotalBar(2); 
Value1 = GetField("外資買賣超");
if Value1 > 0 and TrueAll(GetField("外資買賣超")[1] < 0, _p1) then  ret=1;
OutputField(1, Value1);