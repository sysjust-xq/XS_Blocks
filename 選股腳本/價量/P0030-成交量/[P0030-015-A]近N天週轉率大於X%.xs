{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N天週轉率大於X%
// 顯示名稱: 近[5]天週轉率 > [30]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10
// _p2參數: 
// _p2數值: 10,30,50,70,90
// 
input: _p1(5),_p2(30);
SetTotalBar(_p1+3);
If GetField("發行張數(張)")<> 0 then 
value1 = (summation(getfield("成交量"),_p1)/GetField("發行張數(張)"))*100;
If value1 >_p2 then ret = 1;