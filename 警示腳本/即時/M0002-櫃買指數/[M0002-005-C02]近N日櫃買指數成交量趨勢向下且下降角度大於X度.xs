{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N日櫃買指數成交量趨勢向下且下降角度大於X度
// 顯示名稱: 近[3]日櫃買指數成交量趨勢向下且下降角度大於[30]度
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 3,5,7,10
// _p2參數: 角度的下限值
// _p2數值: 30,60,90
// 
Input:_p1(3);
Input:_p2(30);
variable:_Side(-1);
SetTotalBar(100);
value1 = getsymbolfield("TSE.TW","v")/100000000;
value2 = LinearRegAngle(value1, _p1);
If _Side * value2 > 0 and _Side * value2 > _p2 then ret = 1;