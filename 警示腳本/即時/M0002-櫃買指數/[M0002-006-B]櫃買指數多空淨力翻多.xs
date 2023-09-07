{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數多空淨力翻多
// 顯示名稱: 櫃買指數多空淨力翻多
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(10);//長期參數
settotalBar(12);
value1=summation(high-close,period);//上檔賣壓
value2=summation(close-open,period); //多空實績
value3=summation(close-low,period);//下檔支撐
value4=summation(open-close[1],period);//隔夜力道
if close<>0 then value5=(value2+value3+value4-value1)/close*100;
value6=linearregslope(value5,period);
ret = trueall(value6[1]<0,10) and value6>0 and value5 <0;