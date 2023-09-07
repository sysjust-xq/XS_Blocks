{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 波動變小X%以上
// 顯示名稱: 振幅 <= [5]日最小值[1]%以下
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 5,10,20
// _p2參數: 幅度的上限值
// _p2數值: 1,2,3,5,10
// 
input:_p1(5);
input:_p2(1);
array:_RangeRatio[](0);
var:_Count(0),_gauge(0),_gauge_i(0);
SetBackBar(_p1 + 10, "D");
SetTotalBar(1);

if currentBar = 1 then begin
        Array_SetMaxIndex(_RangeRatio, _p1);
        for value1 = 1 to _p1 begin
                if GetField("參考價","D")[value1-1] <> 0 then
                                _RangeRatio[value1] = 100 * (GetField("最高價","D")[value1-1] - GetField("最低價","D")[value1-1])/GetField("參考價","D")[value1-1]
                else
                                _RangeRatio[value1] = 0;                
        end;
        value2 = getFieldDate("Close","D");
        _Count = 1;
end else begin
        value2 = getFieldDate("Close","D");
        if value2 <> value2[1] then _Count = iff(_Count = _p1, 1, _Count + 1);
        if GetField("參考價","D") <> 0 then
                        _RangeRatio[_Count] = 100 * (GetField("最高價","D") - GetField("最低價","D"))/GetField("參考價","D")
        else
                        _RangeRatio[_Count] = 0;                
end;
NthExtremesArray(_RangeRatio,_p1,2,-1,_gauge,_gauge_i);
if -1 * (_RangeRatio[_Count] - _gauge) - _p2 > 0 then ret = 1;