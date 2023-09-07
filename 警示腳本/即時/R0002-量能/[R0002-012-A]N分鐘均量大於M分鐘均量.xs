{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N分鐘均量大於M分鐘均量
// 顯示名稱: [5]分鐘均量大於[20]分鐘均量
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的短均量期數
// _p1數值: 5,10,20,60
// _p2參數: 1分鐘的長均量期數
// _p2數值: 5,10,20,60
// 
input:_p1(5),_p2(20);
var:_Count(0),_MaxLength(0),_FMA(0),_SMA(0);
if _p1 >= _p2 then return;
_MaxLength = maxList(_p1,_p2);
settotalBar(maxList(_p1,_p2)+2);
//初始化
if getfieldDate("Date") <> getfieldDate("Date")[1] then begin
        _Count = 0;
        _FMA = 0;
        _SMA = 0;
end else begin
        _Count += 1;
end;
//K棒數足夠才會予以運算
if _Count >= _MaxLength then begin
        _FMA = average(volume,_p1);
        _SMA = average(volume,_p2);
        condition1 = _FMA > _SMA;
end else begin
        condition1 = false;
end;
//判斷
ret = condition1;