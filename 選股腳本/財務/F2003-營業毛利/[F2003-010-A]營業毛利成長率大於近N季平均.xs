{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營業毛利成長率大於近N季平均
// 顯示名稱: 營業毛利成長率 > 近[4]季平均
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input: _p1(4);

var: step(0);
once (step = 0) begin
  if barfreq = "Q" then step = 4;
  if barfreq = "Y" then step = 1;
  if barfreq = "M" or barfreq = "AM" then step = 12;
end;  

SetTotalBar(3);
value1 = RateOfChange(GetField("營業毛利"), step);        // 最新一期成長率
value2 = value1;
for value98 = 1 to _p1-1 begin
        value22 = RateOfChange(GetField("營業毛利")[value98], step);
        value2 = value2 + value22;
end;
value2 = value2 / _p1;
if value1 > value2 then ret=1;

OutputField(1, Value1, 2, "成長率");
OutputField(2, Value2, 2, "N期平均");