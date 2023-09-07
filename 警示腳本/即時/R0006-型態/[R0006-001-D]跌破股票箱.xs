{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 跌破股票箱
// 顯示名稱: 最新價向下跌破[20]日箱型，箱型高低幅度<=[10]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的箱型期數
// _p1數值: 5,10,20,60
// _p2參數: 箱型高低幅度的上限值
// _p2數值: 3,5,10,20
// 
Input: _p1(20);
Input: _p2(10);
        
array:_DayHigh[](0),_DayLow[](0);
  
SetBackBar(_p1 + 10, "D");
SetTotalBar(2);     

ArrayXDaySeries(GetField("最高價","D"),_p1 + 10,_DayHigh);
ArrayXDaySeries(GetField("最低價","D"),_p1 + 10,_DayLow);
  
value1=NthHighestArray(_DayHigh,_p1,1);
value2=NthHighestArray(_DayHigh,_p1,3);
value3=NthLowestArray(_DayLow,_p1,1);
value4=NthLowestArray(_DayLow,_p1,3);

if value3 <> 0 then
        value5 = 100 * (value1/absvalue(value3) - sign(value3))
else
        value5 = 0;

if -1 = 1 then begin
        value6 = close - value1[1];
        value7 = GetField("最低價","D")[1] - value1[1];
end else begin
        value6 = value3[1] - close;
        value7 = value3[1] - GetField("最低價","D")[1];
end;

if value5 < _p2 
and value1[1] <= 1.03 * value2[1]  
and value4[1] <= 1.03 * value3[1]
and value6 > 0
and value7 < 0
and v[1] < v
then ret=1;