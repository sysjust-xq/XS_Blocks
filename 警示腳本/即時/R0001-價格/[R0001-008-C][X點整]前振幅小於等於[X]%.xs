{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: [X點整]前振幅小於等於[X]%
// 顯示名稱: [10點整]前振幅 <= [3]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: HH點MM分前
// _p1數值: 090500=[9點05分],091000=[9點10分],091500=[9點15分],092000=[9點20分],092500=[9點25分],093000=[9點30分],100000=[10點整]
// _p2參數: 振幅的上限值
// _p2數值: 1,2,3,5,7
// 
input:_p1(100000);
input:_p2(3);
var:_Side(-1);//1=運算值大於目標值；-1=運算值小於等於目標值。
var:_TimeSide(-1);//1=HHMMSS以後；-1=HHMMSS之前。
var:_Range(0);
settotalBar(2);
_Range = 100 * (GetField("最高價", "D") - GetField("最低價", "D")) / GetField("參考價", "D");
if _TimeSide = -1 then
        condition1 = time <= _p1
else if _TimeSide = 1 then        
        condition1 = time > _p1
else
        raiseRunTimeError("_TimeSide設定有誤，請檢查");        
if _Side = -1 then
        condition2 = _Range <= _p2
else if _Side = 1 then
        condition2 = _Range > _p2
else
        raiseRunTimeError("_Side設定有誤，請檢查");        
ret = condition1 and condition2;