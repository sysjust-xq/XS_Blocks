{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 多次到頂而破
// 顯示名稱: 多次到頂而破
// 執行頻率: 日(逐筆洗價)
// 
// 
variable:HitTimes(4);//設定觸頂次數
variable:RangeRatio(1);//設定頭部區範圍寬度%
variable:Length(40);//計算期數
variable: theHigh(0),HighLowerBound(0),TouchRangeTimes(0); 
settotalBar(50);
if GetSymbolField("tse.tw","收盤價") > average(GetSymbolField("tse.tw","收盤價"),10) then begin         
        theHigh = Highest(High[1],Length); 
        value1=highestbar(high[1],length);//找到過去其間的最高點        
        HighLowerBound = theHigh *(100-RangeRatio)/100; // 設為瓶頸區間上界                 
        TouchRangeTimes = CountIF(High[1] > HighLowerBound, Length-value1);//回算在此區間中 進去瓶頸區的次數           
        Condition1 = TouchRangeTimes >= HitTimes;
        Condition2 = close > theHigh;
        condition3=close[length]*1.1<thehigh;         
        Ret = Condition1 and Condition2 and condition3 ;
end;