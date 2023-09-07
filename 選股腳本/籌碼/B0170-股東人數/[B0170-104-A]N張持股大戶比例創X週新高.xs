{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N張持股大戶比例創X週新高
// 顯示名稱: [400]張持股大戶比例創[8]週新高
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 400,600,800,1000
// _p2參數: 
// _p2數值: 4,8,12,16
// 
input:_p1(400);
input:_p2(8); 
SetTotalBar(2);
Value1 = GetField("大戶持股比例", param:=_p1);
if Value1 <= 0 then return;
if _p2 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleHighest(GetField("大戶持股比例", param:=_p1)[1], _p2-1);
    if Value1 > Value2 then ret = 1;
end;
OutputField(1, Value1);