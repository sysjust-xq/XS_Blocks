{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 跌破多次未跌破的低價區
// 顯示名稱: 跌破多次未跌破的低價區
// 執行頻率: 日(逐筆洗價)
// 
// 
var:HitTimes(3),RangeRatio(1),Length(20),LowerBound(0),TouchRangeTimes(0),theLow(0);
settotalbar(22);
theLow = Lowest(Low[1],Length);	//找到過去其間的最高點
LowerBound = theLow *(100+RangeRatio)/100;	//設為瓶頸區間上界
TouchRangeTimes = CountIF(Low[1] < LowerBound, Length);	//回算在此區間中 進去瓶頸區的次數  
ret = TouchRangeTimes >= HitTimes   and    close < theLow;