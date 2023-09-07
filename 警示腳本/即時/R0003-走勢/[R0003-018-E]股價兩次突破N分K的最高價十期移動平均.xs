{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 股價兩次突破N分K的最高價十期移動平均
// 顯示名稱: 股價兩次突破當日5分K的最高價[10]期移動平均
// 執行頻率: 5分(逐筆洗價)
// 
// _p1參數: 5分鐘的均線期數
// _p1數值: 5,10,20
// 
Input:_p1(10);
Var:_p2(2);
Var:_p3(0);
var:_Count(0), _TrueTimes(0), i(0), _Side(1);
settotalBar(60+1);
if GetFieldDate("日期") <> GetFieldDate("日期")[1] then _count = 0 else _count += 1;

if _Count >= _p1-1 then begin
        i += 1;
        if _Side = 1 then
                _TrueTimes = countIf(GetField("收盤價") cross Above average(GetField("最高價")[1] * (1 + _p3), _p1),i)
        else if _Side = -1 then
                _TrueTimes = countIf(GetField("收盤價") cross below average(GetField("最低價")[1] * (1 + _p3), _p1),i);
        ret = _TrueTimes >= _p2;
end else begin
        i = 0;
        _TrueTimes = 0;
end;