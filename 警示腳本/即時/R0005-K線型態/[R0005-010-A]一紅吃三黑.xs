{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 一紅吃三黑
// 顯示名稱: 一紅吃三黑
// 執行頻率: 1分(非逐筆洗價)
// 
// 
Var: _p1(3);
var:_Index(0);
array:_CountArray[](0);

settotalBar(20);

array_SetMaxIndex(_CountArray,_p1 + 1);

_Index = mod(currentBar,_p1 + 1);

if 1 * (open - close) > 0 then begin
        _CountArray[_Index] = 1;
end else
        _CountArray[_Index] = 0;
if _CountArray[_Index] <> 0 then return;
condition1 = array_Sum(_CountArray,0,_p1) = _p1;
condition2 = iff(1 = 1,close,high) > highest(high[1],_p1);
condition3 = iff(1 = -1,close,low) < lowest(low[1],_p1);
if True then
        condition4 = condition2 and condition3
else
        if 1 = 1 then condition4 = condition2 else condition4 = condition3;
                
if condition1 and condition4 then ret = 1;