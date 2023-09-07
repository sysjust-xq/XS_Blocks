{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 企業價值倍數小於N倍
// 顯示名稱: 企業價值倍數 < [2.5]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,2.5,3
// 
settotalBar(100);
input:_p1(2.5);
Value99=(GetField("總市值","D")*100+GetField("負債總額","Q")-GetField("現金及約當現金","Q")-GetField("短期投資","Q"))/summation(GetField("稅前息前折舊前淨利","Q"),4);
if Value99<_p1
and Value99>1
then ret=1;
outputfield(1,Value99,1,"企業價值倍數");