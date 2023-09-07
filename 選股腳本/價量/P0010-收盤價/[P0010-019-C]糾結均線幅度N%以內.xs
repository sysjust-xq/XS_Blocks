{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 糾結均線幅度N%以內
// 顯示名稱: [5日、10日、20日]糾結均線幅度[1]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20=[5日、10日、20日],60=[5日、20日、60日],61=[10日、20日、60日],120=[20日、60日、120日]
// _p2參數: 
// _p2數值: 0.5,1,1.5,2,2.5,3,5,7
// 
input:_p1(20);
input:_p2(1); 
variable: shortlength(0), midlength(0), Longlength(0);  
variable: shortaverage(0), midaverage(0), Longaverage(0),maxaverage(0), minaverage(0), alertaverage(0);   
switch (_p1)
begin
        case 20: shortlength = 5; midlength = 10; longlength = 20;
        case 60: shortlength = 5; midlength = 20; longlength = 60;
        case 61: shortlength = 10; midlength = 20; longlength = 60;
        case 120: shortlength = 20; midlength = 60; longlength = 120;
        default: raiseRunTimeError("p1參數均線選項超過勾選範圍，請除錯");
end;
shortaverage = average(close,shortlength);
midaverage = average(close,midlength);
Longaverage = average(close,Longlength);
maxaverage = maxlist(shortaverage,midaverage,Longaverage);
SetTotalBar(8);
value1= absvalue(shortaverage -midaverage);
value2= absvalue(midaverage -Longaverage);
value3= absvalue(Longaverage -shortaverage);
if maxlist(value1,value2,value3)*100 <_p2*Close then  ret=1;