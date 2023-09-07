{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 突破多次未突破的高價區
// 顯示名稱: 突破多次未突破的高價區
// 執行頻率: 日(逐筆洗價)
// 
// 
var:HitTimes(3),RangeRatio(1),Length(20),HighLowerBound(0),TouchRangeTimes(0),theHigh(99999999);
settotalbar(22);
theHigh = Highest(High[1],Length);        //找到過去其間的最高點
HighLowerBound = theHigh *(100-RangeRatio)/100;        //設為瓶頸區間上界
TouchRangeTimes = CountIF(High[1] > HighLowerBound, Length);        //回算在此區間中 進去瓶頸區的次數  
ret = TouchRangeTimes >= HitTimes   and    close > theHigh;