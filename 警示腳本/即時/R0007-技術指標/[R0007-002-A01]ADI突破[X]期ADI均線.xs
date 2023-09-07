{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: ADI突破[X]期ADI均線
// 顯示名稱: ADI突破[10]期ADI均線
// 執行頻率: 日(逐筆洗價)
// 
// ADI指標的原文是Accumulation Distribution Index，按原文直譯的名稱是「累積分配指標」，其實它真正的意思是「漲跌力道聚散指標」，Accumulation指的是上漲力道在累積，而Distribution指的是上漲力道在消散之意，所以是「聚散指標」。
// _p1參數: 日的ADI均線期數
// _p1數值: 5,10,20,60
// 
input:_p1(10);
var:_Side(1);
settotalBar(_p1+0+10);
if _Side = 1 and ADI cross Above average(ADI[0], _p1) then ret = 1
else if _Side = -1 and ADI cross below average(ADI[0], _p1) then ret = 1;