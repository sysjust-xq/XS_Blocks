{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 高檔十字反轉
// 顯示名稱: 高檔十字反轉
// 執行頻率: 1分(非逐筆洗價)
// 
// 開盤1小時後，才會判斷
// 
variable:Kprice(0),_Count(0),_Long(60);
settotalBar(62);

//換日初始化
if GetFieldDate("日期") <> GetFieldDate("日期")[1] then begin 
        _Count = 0;
        KPrice = 0;
end else 
        _Count += 1;

//60根分鐘K棒後才會開始判斷
if _Count >= _Long - 1 then begin
        condition1 = close =open and high>open and low<open;
        condition2 = Highest(H,3) = Highest(H,_Long);
end else begin
        condition1 = false;
        condition2 = false;
end;

if condition1 and condition2 then KPrice = average(L,3);

Ret= Close crosses below Kprice;