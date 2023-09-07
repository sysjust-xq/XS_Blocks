{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: OSC低檔回升
// 顯示名稱: OSC < 0, 且趨勢朝上(還在0以下)
// 執行頻率: 日(逐筆洗價)
// 
// 
variable: _p1(12), _p2(26), _p3(9), difValue(0), macdValue(0), oscValue(0);
Var: _Side(1);//1為低檔回升；-1為高檔下跌；2為高檔上升；-2為低檔下跌
SetTotalBar((maxlist(12,26) +9) * 4);
MACD(weightedclose(), _p1, _p2, _p3, difValue, macdValue, oscValue);
if _Side = 1 and UpTrend( oscValue, _p3) and oscValue< 0  then ret=1
else if _Side = -1 and downTrend(oscValue, _p3) and oscValue> 0  then ret=1
else if _Side = 2 and UpTrend( oscValue, _p3) and oscValue> 0 then ret =1
else if _Side = -2 and downTrend(oscValue, _p3) and oscValue< 0 then ret = 1;