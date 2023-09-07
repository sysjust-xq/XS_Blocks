{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日三大法人賣超佔股本比排行
// 顯示名稱: 近[5]日三大法人賣超佔股本比前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(5,numeric);
settotalBar(_p1+2);
value1 = (summation(GetField("法人買賣超張數"),_P1)/GetField("發行張數(張)"))*100;
if GetField("發行張數(張)")<> 0 and summation(GetField("法人買賣超張數"),_P1) > 0 then return;

If summation(GetField("法人買賣超張數"),_P1) < 0  then retval = value1;