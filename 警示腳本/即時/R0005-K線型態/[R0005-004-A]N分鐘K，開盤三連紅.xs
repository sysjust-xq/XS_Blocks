{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N分鐘K，開盤三連紅
// 顯示名稱: 5分鐘K，開盤三連紅
// 執行頻率: 5分(非逐筆洗價)
// 
// 開盤連續三根五分鐘紅K棒
// 
variable:_Count(0); 
settotalBar(5);
if GetFieldDate("日期") <> GetFieldDate("日期")[1] then _count = 0 else _count += 1;

if _Count = 2 then begin
        condition1 = TrueAll(Close > Close[1] ,3);
        condition2 = trueall(close=high,3);
        condition3 = close<close[3]*1.03;
end else begin
        condition1 = false;
        condition2 = false;
        condition3 = false;
end;
if condition1 and condition2 and condition3 then ret = 1;