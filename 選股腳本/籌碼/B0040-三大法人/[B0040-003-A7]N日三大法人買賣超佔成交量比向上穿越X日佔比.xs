{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日三大法人買賣超佔成交量比向上穿越X日佔比
// 顯示名稱: [5]日三大法人買賣超佔成交量比向上穿越[20]日佔比
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20,60
// _p2參數: 
// _p2數值: 3,5,10,20,60
// 
input:_p1(5);
input:_p2(20);
settotalbar(_p2+3);
If GetField("成交量") <> 0 then
Value1 =GetField("法人買賣超張數")/GetField("成交量");
If average(value1,_p1) cross Above average(value1,_p2) then ret = 1;
outputField(1,average(value1,_p1));
outputField(2,average(value1,_p2));