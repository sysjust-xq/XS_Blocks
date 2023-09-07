{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N連陰
// 顯示名稱: 1分K出現[5]連陰
// 執行頻率: 1分(非逐筆洗價)
// 
// 連續五根黑K棒
// _p1參數: 1分鐘出現黑K次數的下限值
// _p1數值: 3,5,10
// 
Input:_p1(5);//紅K次數
variable:_Side(-1);//紅K=1、黑K=-1
variable:_signal(0);

//計算當日K棒編號
variable:_barnumber(0);
_barnumber = _barnumber + 1;
var:_IsFirstCall(false);
var:intraBarPersist _firsttime(0), intraBarPersist _firstbar(0);
_IsFirstCall = false;
if _firstbar <> currentBar then begin
        _firstbar = currentBar;
        _IsFirstCall = true;
end;
if _IsFirstCall then begin
        if date <> date[1] then _barnumber = 1;
end;

//是否紅K
_signal = iff(_Side * (close-open) > 0,1,0);

condition1 = _barnumber >= _p1-1; //僅當日觸發
condition2 = summation(_signal,_p1) = _p1;
if condition1 and condition2 then ret = 1;