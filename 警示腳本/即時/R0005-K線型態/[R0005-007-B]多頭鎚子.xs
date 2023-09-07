{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 多頭鎚子
// 顯示名稱: 多頭鎚子
// 執行頻率: 1分(非逐筆洗價)
// 
// 
var:_Count(0);

if GetFieldDate("日期") <> GetFieldDate("日期")[1] then _Count = 0 else _Count += 1;

//過31根分鐘K棒後，才開始判斷
if _Count >= 30 then begin
        condition1 = close*1.1<close[30];//近30根K跌逾一成
        condition2 = high<close*1.005;//幾乎收最高
        condition3 = close>open;//陽線
        condition4 = (open-low)>=2*(close-open);//下影線是實體的兩倍
end else begin 
        condition1 = false;
        condition2 = false;
        condition3 = false;
        condition4 = false;
end;

if condition1 and condition2 and condition3 and condition4 then ret = 1;