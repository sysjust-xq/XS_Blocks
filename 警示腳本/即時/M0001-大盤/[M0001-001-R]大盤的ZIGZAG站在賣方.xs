{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤的ZIGZAG站在賣方
// 顯示名稱: 大盤的ZIGZAG站在賣方
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(10);//"計算期間"
variable:zigzag(0),_Side(0);
settotalBar(12);
_Side=-1;
if average(getfield("最高價"),period)>1.035*average(getfield("收盤價"),period) then zigzag=average(getfield("最高價"),period)
else if average(getfield("最低價"),period)<(1-0.035)*average(getfield("收盤價"),period) then zigzag=average(getfield("最低價"),period)
else zigzag=average(getfield("收盤價"),period);
if _Side = 1 and trueall(zigzag>zigzag[1],4) and getfield("收盤價")>zigzag then ret = 1
else if _Side = -1 and trueall(zigzag<zigzag[1],4) and getfield("收盤價")<zigzag then ret = 1;