{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 糾結均線突破
// 顯示名稱: 最新價向上穿越[5日、10日、20日]糾結均線
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 三條均線的期數
// _p1數值: 20=[5日、10日、20日],40=[10日、20日、40日],60=[5日、20日、60日],61=[10日、20日、60日],120=[20日、60日、120日]
// 
input:_p1(20);
var:_p2(2);          

variable: shortlength(0), midlength(0), Longlength(0);         
variable: shortaverage(0), midaverage(0), Longaverage(0), maxaverage(0), minaverage(0), alertaverage(0);

SetBackBar(_p1 + 10, "AD");
SetTotalBar(1);

//決定均線天期
switch (_p1)
begin
        case 20: shortlength = 5; midlength = 10; longlength = 20;
        case 40: shortlength = 10; midlength = 20; longlength = 40;
        case 60: shortlength = 5; midlength = 20; longlength = 60;
        case 61: shortlength = 10; midlength = 20; longlength = 60;
        case 120: shortlength = 20; midlength = 60; longlength = 120;
        default: raiseRunTimeError("p1參數均線選項超過勾選範圍，請除錯");
end;

shortaverage = average(GetField("收盤價", "AD"),shortlength);
midaverage = average(GetField("收盤價", "AD"),midlength);
Longaverage = average(GetField("收盤價", "AD"),Longlength);
maxaverage = maxlist(shortaverage,midaverage,Longaverage);
minaverage = minlist(shortaverage,midaverage,Longaverage);
alertaverage = iff(1 = 1,maxaverage,minaverage);

if 100 * (maxaverage - minaverage) > _p2 * Close then return;

value1 = 1 * (Close - alertaverage);
IF value1 > 0 and value1 * xf_GetValue("AD",value1,1) < 0 then ret = 1;