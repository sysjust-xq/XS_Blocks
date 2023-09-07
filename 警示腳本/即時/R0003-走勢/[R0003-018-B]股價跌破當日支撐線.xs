{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 股價跌破當日支撐線
// 顯示名稱: 最新價跌破當日支撐線
// 執行頻率: 1分(非逐筆洗價)
// 
// 支撐線是分鐘K棒成交量創新高的最低價
// 
var:_ChageDNum(0), _MaxV(0), _DWW(0);
//跨日初始化
if getfieldDate("Date") <> getfieldDate("Date")[1] then begin
	_MaxV = 0;
	_ChageDNum = 0;
	_DWW = 0;
end;
//紀錄分鐘K棒量創新高的K棒位置
if volume > _MaxV then begin 
	_MaxV = volume;
	_ChageDNum =0;
end else begin
	_ChageDNum+=1;
end;
_DWW = low[_ChageDNum];
ret = close cross below _DWW;