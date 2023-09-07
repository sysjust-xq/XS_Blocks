{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 跌停一直鎖不住
// 顯示名稱: 跌停一直鎖不住
// 執行頻率: 1分(非逐筆洗價)
// 
// 
variable:BarNumberOfToday(0),LowCount(0);
settotalBar(60+2);
if getfieldDate("Date") <> getfieldDate("Date")[1] then begin
        BarNumberOfToday=1;
        LowCount=0;
end else
        BarNumberOfToday+=1;{記錄今天的Bar數}
if Date <> Date then return;{計算日為今天才繼續}
if TimeDiff(Time,Time[BarNumberOfToday-1],"M") < 30 and {開盤30分鐘內} Low = GetField("跌停價", "D") then LowCount+=1; {記錄觸跌停次數}
if BarNumberOfToday > 60 and LowCount >1 and TrueAll(close > GetField("跌停價", "D"),60) then ret=1;
{ 開盤60根BAR(分鐘)後,曾跌停,且連續60分鐘未再跌停,觸發}