{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數N日TRIX指標站在X日之上
// 顯示名稱: 櫃買指數5日TRIX指標站在10日之上
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:_Side(1);
settotalBar(10*2);
Value1 = TRIX(GetField("收盤價"), 5) * 100;
Value2 = TRIX(GetField("收盤價"), 10) * 100;
if _Side = 1 and value1 > value2 then
        ret = 1
else if _Side = -1 and value1 < value2 then
        ret = 1;