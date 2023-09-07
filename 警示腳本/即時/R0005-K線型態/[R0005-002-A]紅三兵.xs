{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 紅三兵
// 顯示名稱: 紅三兵
// 執行頻率: 1分(非逐筆洗價)
// 
// 
var:_count(0);
settotalbar(5);
if GetFieldDate("日期") <> GetFieldDate("日期")[1] then _count = 0 else _count += 1;
if        _count >= 2 then begin
        condition1=        ( close - open ) >(high -low) * 0.75;//狀況1:        實體上漲K棒
        condition2=        ( close[1] - open[1] ) >(high[1] -low[1]) * 0.75;//狀況2:        實體上漲K棒
        condition3=        ( close[2] - open[2] ) >(high[2] -low[2]) * 0.75;//狀況3:        實體上漲K棒
        condition4=        close > close[1];//狀況4:        上漲
        condition5=        close[1] > close[2];//狀況5:        上漲
end else begin
        condition1 = false;
        condition2 = false;
        condition3 = false;
        condition4 = false;
        condition5 = false;
end;
IF condition1 and condition2 and condition3 and        condition4 and condition5 THEN RET=1;