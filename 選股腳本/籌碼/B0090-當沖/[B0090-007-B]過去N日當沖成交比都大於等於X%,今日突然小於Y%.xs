{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 過去N日當沖成交比都大於等於X%,今日突然小於Y%
// 顯示名稱: 過去[5]日當沖成交比都>=[50]%，今日突然 < [30]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,40,50,60
// _p2參數: 
// _p2數值: 10,20,30,50,70
// _p3參數: 
// _p3數值: 10,20,30,50,70
// 
input:_p1(5);
input:_p2(50); 
input:_p3(30); 
SetTotalBar(3); 
If _p2<=_p3 then return;
If getfield("成交量", "D") > 0 then 
If trueall((GetField("當日沖銷張數")[1]/getfield("成交量", "D")[1])*100>=_p2,_p1) and 
(GetField("當日沖銷張數")/getfield("成交量", "D"))*100 <_p3 then ret = 1;
OutputField(1, (GetField("當日沖銷張數")/getfield("成交量", "D"))*100,"當沖比");
OutputField(2, (GetField("當日沖銷張數")[1]/getfield("成交量", "D")[1])*100,"當沖比");