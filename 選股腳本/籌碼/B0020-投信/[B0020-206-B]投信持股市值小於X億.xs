{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 投信持股市值小於X億
// 顯示名稱: 投信持股市值 < [3]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,50
// 
input:_p1(3);  
SetTotalBar(3);
If (GetField("投信持股比例")*GetField("發行張數(張)") *getField("收盤價", "D"))/10000000 < _p1 then  ret = 1;
outputField1((GetField("投信持股比例")*GetField("發行張數(張)") *getField("收盤價", "D"))/10000000,"持股市值");
outputField2(GetField("總市值(億)"),"總市值(億)");
outputField3(GetField("投信持股比例"),"持股比例");