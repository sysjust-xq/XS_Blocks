{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 三大法人買賣超佔成交量比多頭排列
// 顯示名稱: 三大法人買賣超佔成交量比多頭排列[5日>10日>20日]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1=[5日>10日>20日],2=[5日>20日>60日],3=[10日>20日>60日],4=[20日>60日>120日],5=[20日>60日>240日]
// 
input:_p1(1);
var: period1(0), period2(0), period3(0);
settotalbar(3);
switch (_p1)
begin
        case 2: period1 = 5; period2 = 20; period3 = 60;
        case 3: period1 = 10; period2 = 20; period3 = 60;
        case 4: period1 = 20; period2 = 60; period3 = 120;
        case 5: period1 = 20; period2 = 60; period3 = 240;
        default: period1 = 5; period2 = 10; period3 = 20;
end;

value1 = Average(GetField("法人買賣超張數")/GetField("成交量"), period1);
value2 = Average(GetField("法人買賣超張數")/GetField("成交量"), period2);
value3 = Average(GetField("法人買賣超張數")/GetField("成交量"), period3);
if value1 > value2 and value2 > value3 then ret=1;
OutputField(1, GetField("法人買賣超張數")/GetField("成交量"), 2, "主力集中");