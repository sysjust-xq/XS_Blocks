{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日總市值減少超過N億
// 顯示名稱: 近[5]日總市值減少超過[5]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60,120,240
// _p2參數: 
// _p2數值: 5,10,20,50,100
// 
input: _p1(5);
input: _p2(5);
SetTotalBar(2);
SetBarFreq("AD");
value1 = GetField("總市值(億)") - GetField("總市值(億)")[_p1];
value2 = -1*value1;
if value2 >= _p2 then ret=1;