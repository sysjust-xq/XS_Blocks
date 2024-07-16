{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 翻黑，開盤N分鐘都是紅，現在黑
// 顯示名稱: 翻黑（開盤[3]分鐘都是紅，現在黑）
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 1,3,5,10
// 
input:_p1(3);
var:_RecordI(0);
settotalbar(_p1+2);

if GetFielddate("日期") <> GetFielddate("日期")[1] then begin
        _RecordI = 0;                //換日計數變數初始化
        condition1 = false; //換日計數布林初始化
end;

_RecordI += 1;

//當日前_p1根分鐘K棒都是紅，現在黑。
if _RecordI = _p1 - 1 then begin
        condition1 = true;
        for value1 = 0 to _RecordI begin
                if close[value1] <= GetField("參考價", "D") then begin
                        condition1 = False;
                        break;
                end;
        end;
end;

condition2 = close crosses under GetField("參考價", "D");

if condition1 and condition2 then ret=1;