{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 市值營收比小於X
// 顯示名稱: 市值營收比 < [10]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,50,80
// 
input:_p1(10);
SetBarFreq("AD");
SetTotalBar(3);
If (getfield("總市值(億)", "D")/summation(GetField("月營收","M"),12)) <_p1 then ret = 1;
outputField1((getfield("總市值(億)", "D")/summation(GetField("月營收","M"),12)));