{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 盤下帶量火箭噴出
// 顯示名稱: 盤下帶量火箭噴出
// 執行頻率: 1分(非逐筆洗價)
// 
// 最新價比昨收低，且出現帶量急拉的狀況
// 
settotalBar(10+2);
condition1 = Close < GetField("參考價", "D"); {還在盤下}
condition2 = Close> Close[1] and Close * Volume>250; {觸發當筆上漲且買進幅度超過25萬}
condition3 = close > close[10]* 1.015; {快速漲1.5%}
condition4 = getfieldDate("Date")[10] = getfieldDate("Date");
condition5 = close > close[5]; {連續漲升}
condition6 = timediff(time,time[10],"M")< 3; {3分鐘內急拉升}
condition7 = summation(volume,10)> 100; {張}{上漲段總量要大於100張}
if        condition1 and        condition2 and        condition3 and condition4 and condition5 and condition6 and condition7 then ret = 1;