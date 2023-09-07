{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: X分鐘K，開盤三連黑
// 顯示名稱: 1分鐘K，開盤三連黑
// 執行頻率: 1分(非逐筆洗價)
// 
// 開盤連續三根一分鐘黑K棒
// 
variable:_Count(0); 
settotalBar(5);
if GetFieldDate("日期") <> GetFieldDate("日期")[1] then _count = 0 else _count += 1;
if _Count = 2 then begin
        condition1 = TrueAll(Close < Close[1] ,3);
        condition2 = trueall(close=low,3);
        condition3 = close>close[3]*0.97;
end else begin
        condition1 = false;
        condition2 = false;
        condition3 = false;
end;
if condition1 and condition2 and condition3 then ret = 1;