{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 緩步走低
// 顯示名稱: 緩步走低
// 執行頻率: 1分(非逐筆洗價)
// 
// 開盤五分鐘內尚未跌停，之後走低
// 
var:_p1(5),_Count(0),_CountUL(0);
settotalBar(7);
//初始化
if GetFielddate("日期") <> GetFielddate("日期")[1] then begin 
        _Count = 0;
        Condition3 = false;
end else 
        _Count += 1;
if _Count < _p1 - 1 and close = GetField("跌停價", "D") then Condition3 = true;        
if _Count >= _p1 - 1 and Condition3 = false then begin        //開盤 _Count 期內不能跌停，因為是「緩步」
        condition1 = trueall(close<=close[1],_p1);
        condition2 = trueall(close=low,_p1);
end else begin
        condition1 = false;
        condition2 = false;
end;
if condition1 and condition2 then ret = 1;