{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤N分鐘內，創X次新低
// 顯示名稱: 開盤[5]分鐘內，創[3]次新低
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 3,5,10,15
// _p2參數: 創新低次數的下限值
// _p2數值: 3,5,10
// 
Input:_p1(5);//開盤n分鐘內
Input:_p2(3);//新高次數
settotalBar(270);
variable:_Side(-1);//大於前期=1、小於前期=-1
variable: _barnumber(0);//當日K棒編號
variable: _signal(0);//是否創新高
variable:_triggered(False);//今日是否已符合

if _p2 > _p1 then return;

//bar歸0
var:_IsFirstCall(false);
var:intraBarPersist _firsttime(0), intraBarPersist _firstbar(0);
_IsFirstCall = false;
_barnumber = _barnumber + 1;
if _firstbar <> currentBar then begin
        _firstbar = currentBar;
        _IsFirstCall = true;
end;
if _IsFirstCall and date <> date[1] then begin
        _barnumber = 1;
        _triggered = false;
end;

_signal = iff(getfield("最低價") = getfield("最低價","D") and _Side*(getfield("最低價") - getfield("最低價")[1]) > 0,1,0);
condition1 = _barnumber <= _p1;
condition2 = summation(_signal,_p1) = _p2;
if _triggered then ret = 1
else if condition1 and condition2 then begin
        _triggered = True;
        ret = 1;
end;