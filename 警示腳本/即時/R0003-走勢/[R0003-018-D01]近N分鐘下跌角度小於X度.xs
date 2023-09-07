{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N分鐘下跌角度小於X度
// 顯示名稱: 近[10]分鐘下跌角度小於[45]度
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 5,10,20,30
// _p2參數: 角度的上限值
// _p2數值: 15,30,45,60
// 
input:_p1(10),_p2(45);
var:_Count(0),_LRate(0);
settotalBar(_p1+2);
//初始化
if getfielddate("Date") <> getfielddate("Date")[1] then begin
	_Count = 0;
	_LRate = 0;
end else begin
	_Count += 1;
end;
//運算漲幅
if _Count >= _p1 - 1 then begin
	_LRate = rateOfChange(close, _p1);
end else begin
	_LRate = 0;
end;
//跌幅大於0則判斷角度
ret = _Count >= _p1 - 1 and _LRate < 0 and NDaysAngle(_p1) <= -_p2;