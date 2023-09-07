{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 研發費用占市值比率小於X%
// 顯示名稱: 研發費用占市值比率小於[3]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10
// 
input: _p1(3);
value1 = Summation(GetField("研發費用"), 4);
value2 = GetField("總市值(億)");
value3 = value1 / value2;
if value3 < _p1 then ret=1;