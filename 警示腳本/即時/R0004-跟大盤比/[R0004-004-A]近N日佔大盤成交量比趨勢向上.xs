{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N日佔大盤成交量比趨勢向上
// 顯示名稱: 佔大盤成交量比[5]日趨勢朝上
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 5,10,20,60,120,240
// 
input:_p1(5);
array:_DayRatio[](0),_DayVolume[](0),_DayMarketVolume[](0);
SetBackBar(_p1 + 10, "D");
SetTotalBar(2);     

ArrayXDaySeries(GetField("成交量", "D"),_p1 + 10,_DayVolume);

if GetSymbolInfo("交易所") = "OTC" then
        ArrayXDaySeries(GetSymbolField("OTC.TW", "成交量", "D"),_p1 + 10,_DayMarketVolume)
else
        ArrayXDaySeries(GetSymbolField("TSE.TW", "成交量", "D"),_p1 + 10,_DayMarketVolume);

if _DayMarketVolume[1] <> 0 then
        value1 = 100 * _DayVolume[1] / _DayMarketVolume[1];

Var: idx(0),_xf_CurrentBar(0);

_xf_CurrentBar = xf_GetCurrentBar("D");
if currentBar = 1 then begin
        Array_SetMaxIndex(_DayRatio, _p1);
        for idx = 0 to _p1 - 1 begin
                if _DayMarketVolume[idx + 1] <> 0 then
                        _DayRatio[idx + 1] = 100 * _DayVolume[idx + 1] / _DayMarketVolume[idx + 1]
                else
                        _DayRatio[idx + 1] = _DayRatio[idx + 2];
        end;
end else begin
        if _xf_CurrentBar > _xf_CurrentBar[1] then begin
                Array_Copy(_DayRatio, 1, _DayRatio, 2, _p1 - 1);
        end;
        if _DayMarketVolume[1] <> 0 then
                _DayRatio[1] = 100 * _DayVolume[1] / _DayMarketVolume[1]
        else
                _DayRatio[1] = _DayRatio[2];
end;
ret = 1 * ArrayLinearRegSlope(_DayRatio,_p1) > 0;