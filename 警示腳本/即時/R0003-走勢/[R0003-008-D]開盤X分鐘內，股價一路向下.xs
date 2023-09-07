{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤X分鐘內，股價一路向下
// 顯示名稱: 開盤[10]分鐘內股價一路向下
// 執行頻率: 1分(逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 3,5,7,10
// 
Input:_p1(10);//開盤n分鐘內
variable:_Side(-1);

//計算當日K棒編號
variable:_barnumber(0);
variable:_signal(0);
variable:_triggered(false);
_barnumber = _barnumber + 1;
var:_IsFirstCall(false);
var:intraBarPersist _firsttime(0), intraBarPersist _firstbar(0);
_IsFirstCall = false;
if _firstbar <> currentBar then begin
        _firstbar = currentBar;
        _IsFirstCall = true;
end;
if _IsFirstCall and date <> date[1] then begin
        _barnumber = 1;
        _triggered = false;
end;

_signal = iff(_Side*(close - Close[1]) > 0,1,0);
condition1 = _barnumber = _p1;
condition2 = summation(_signal,_p1) = _p1;
if _triggered then ret = 1
else if condition1 and condition2 then begin
        ret = 1;
        _triggered = True;
end;