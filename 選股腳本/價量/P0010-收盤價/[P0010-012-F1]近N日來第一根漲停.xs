{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日來第一根漲停
// 顯示名稱: 近[20]日來第一根漲停
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input:_p1(20);
settotalbar(_p1+2);
value1 = TrueCount(GetField("收盤價")=GetField("漲停價"),_p1);
If value1 = 1 then ret = 1;