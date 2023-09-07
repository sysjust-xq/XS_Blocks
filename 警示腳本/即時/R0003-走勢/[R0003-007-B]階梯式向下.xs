{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 階梯式向下
// 顯示名稱: 階梯式向下（在[6]根K棒期間，階梯式向下達[4]次以上）
// 執行頻率: 5分(非逐筆洗價)
// 
// _p1參數: 1分鐘的期數
// _p1數值: 3,6,9,12
// _p2參數: 達成階梯式向下的下限次數
// _p2數值: 3,4,5,6
// 
input:_p1(6), _p2(4);
var:_RecordI(0);
settotalBar(_p1+3);

if GetFielddate("日期") <> GetFielddate("日期")[1] then _RecordI = 0 else _RecordI+=1;

condition1 = _RecordI >= _p1 - 1;
condition2 = countif(high<high[1]and low<low[1] ,_p1)>=_p2;

if condition1 and condition2 then ret=1;