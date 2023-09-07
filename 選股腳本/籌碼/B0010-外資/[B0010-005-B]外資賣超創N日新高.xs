{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外資賣超創N日新高
// 顯示名稱: 外資賣超張數創[10]日新高
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,40,50,60,100,120
// 
input:_p1(10); 

SetTotalBar(2);
Value1 = GetField("外資買賣超");
if Value1 >= 0 then return;
if _p1 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleLowest(GetField("外資買賣超")[1], _p1-1);
    if Value1 < Value2 then ret = 1;
end;
OutputField(1, Value1);