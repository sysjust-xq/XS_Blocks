{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日主力買超佔股本比排行
// 顯示名稱: 近[5]日主力買超佔股本比前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(5,numeric);
settotalBar(_p1+2);
value1 = (summation(GetField("主力買賣超張數"),_P1)/GetField("發行張數(張)"))*100;
if GetField("發行張數(張)")<> 0 and value1<= 0 then return;
retval = value1;