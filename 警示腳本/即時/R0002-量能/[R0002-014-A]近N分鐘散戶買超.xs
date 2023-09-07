{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N分鐘散戶買超
// 顯示名稱: [近15分鐘]散戶買超
// 執行頻率: 1分(非逐筆洗價)
// 
// 散戶為「小單」而近N分鐘散戶買超，是累計近N分鐘的買超。
// _p1參數: 1分鐘的期數
// _p1數值: 5=[近5分鐘],10=[近10分鐘],15=[近15分鐘]
// 
Input: _p1(15);
array:_Large[](0);
var:_Count(0);
SetTotalBar(60);
Array_SetMaxIndex(_Large, _p1);
if getfieldDate("Date") <> getfieldDate("Date")[1] then begin
        _Count = 0;
        Array_SetValRange(_Large, 1, _p1, 0);
end else begin
        _Count += 1;
end;
value99 = mod(_count,_p1) + 1;
_Large[value99] = 1 * sign(GetField("買進小單金額", "1") - GetField("賣出小單金額", "1"));
if Array_Sum(_Large, 1, _p1) = _p1 then ret = 1;