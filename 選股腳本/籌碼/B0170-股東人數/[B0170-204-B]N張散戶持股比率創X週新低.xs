{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N張散戶持股比率創X週新低
// 顯示名稱: [10]張持股散戶比例創[8]週新低
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,5,10,15,50,100,200
// _p2參數: 
// _p2數值: 4,8,12,16
// 
input:_p1(10);
input:_p2(8); 
SetTotalBar(2);
Value1 = GetField("散戶持股比例", param:=_p1);
if Value1 <= 0 then return;
if _p2 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleLowest(GetField("散戶持股比例", param:=_p1)[1], _p2-1);
    if Value1 < Value2 then ret = 1;
end;
OutputField(1, Value1);