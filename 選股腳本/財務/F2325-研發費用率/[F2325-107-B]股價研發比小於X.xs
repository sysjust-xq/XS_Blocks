{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價研發比小於X
// 顯示名稱: 股價研發比 < [10]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20
// 
input:_p1(10);
SetBarFreq("AD");
SetTotalBar(3);
If (getfield("總市值(億)", "D")/summation(GetField("研發費用","Q"),4)) < _p1 then ret = 1;
outputField1((getfield("總市值(億)", "D")/summation(GetField("研發費用","Q"),4)));