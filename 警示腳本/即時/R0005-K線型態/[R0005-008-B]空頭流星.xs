{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 空頭流星
// 顯示名稱: 空頭流星
// 執行頻率: 1分(非逐筆洗價)
// 
// 
var:_Count(0);

if GetFieldDate("日期") <> GetFieldDate("日期")[1] then _Count = 0 else _Count += 1;

//過31根分鐘K棒後，才開始判斷
if _Count >= 30 then begin
        condition1 = close>close[30]*1.1;//近30根K漲逾一成
        condition2 = low>close*0.995;//幾乎收最低
        condition3 = close<open;//陰線
        condition4 = (high-open)>=2*(open-close);//上影線是實體的兩倍
end else begin 
        condition1 = false;
        condition2 = false;
        condition3 = false;
        condition4 = false;
end;

if condition1 and condition2 and condition3 and condition4 then ret = 1;