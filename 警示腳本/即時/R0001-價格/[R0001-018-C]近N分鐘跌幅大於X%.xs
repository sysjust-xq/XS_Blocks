{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N分鐘跌幅大於X%
// 顯示名稱: 近[10]分鐘跌幅大於[3]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 3,5,10,20,30
// _p2參數: 漲幅的下限值
// _p2數值: 1,2,3,5,7,8,9,9.5
// 
input:_p1(10),_p2(3);
var:_Count(0),_LRate(0);
settotalBar(_p1+2);
//初始化
if getfielddate("Date") <> getfielddate("Date")[1] then begin
        _Count = 0;
        _LRate = 0;
end else begin
        _Count += 1;
end;
//判斷
if _Count >= _p1 - 1 then begin
        _LRate = rateOfChange(close, _p1);
end else begin
        _LRate = 0;
end;
ret = _Count >= _p1 - 1 and _LRate <= -_p2;