{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大戶轉強
// 顯示名稱: [近15分鐘大戶]買賣力翻紅
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 15=[近15分鐘大戶],0=[大單]
// 
Input: _p1(15);
SetTotalBar(60);
array:_LargeBuy[](0),_LargeSell[](0),_Amount[](0);
var:_Count(0);
if _p1 = 0 then begin
        value1 = GetField("買進大單金額", "D") + GetField("買進特大單金額", "D");
        value2 = GetField("賣出大單金額", "D") + GetField("賣出特大單金額", "D");
        value3 = GetField("成交金額", "D");
end else begin
        Array_SetMaxIndex(_LargeBuy, _p1);
        Array_SetMaxIndex(_LargeSell, _p1);
        Array_SetMaxIndex(_Amount, _p1);
        if getfieldDate("Date") <> getfieldDate("Date")[1] then begin
                _Count = 0;
                Array_SetValRange(_LargeBuy, 1, _p1, 0);
                Array_SetValRange(_LargeSell, 1, _p1, 0);
                Array_SetValRange(_Amount, 1, _p1, 0);
        end else begin
                _Count += 1;
        end;
        value99 = mod(_count,_p1) + 1;
        _LargeBuy[value99] = GetField("買進大單金額", "1") + GetField("買進特大單金額", "1");
        _LargeSell[value99] = GetField("賣出大單金額", "1") + GetField("賣出特大單金額", "1");
        _Amount[value99] = GetField("成交金額", "1");
        value1 = Array_Sum(_LargeBuy, 1, _p1);
        value2 = Array_Sum(_LargeSell, 1, _p1);
        value3 = Array_Sum(_Amount, 1, _p1);
end;
if value3 <> 0 then
        value4 = 100*1*(value1 - value2)/value3
else
        value4 = 0;
if value4 > 0 and value4 * value4[1] < 0 then ret = 1;