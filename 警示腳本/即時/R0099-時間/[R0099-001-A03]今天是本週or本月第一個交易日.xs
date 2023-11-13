{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 今天是本週or本月第一個交易日
// 顯示名稱: 今天是[本週]第一個交易日
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 
// _p1數值: 0=[本週],1=[本月]
// 
input:_p1(0);
settotalBar(3);
If _p1 = 0 and (WeekOfMonth(date) <> WeekOfMonth(date)[1] and v > 0 and DayOfMonth(date) <> 1) or (DayOfMonth(date) = 1 and DayOfWeek(Date) = 1) then ret = 1; //今天是本週第一個交易日
If _p1 = 1 and Month(date) <> Month(date)[1] and v > 0  then ret = 1; //今天是本月第一個交易日