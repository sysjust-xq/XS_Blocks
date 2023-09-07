{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N點以前，量比大於X
// 顯示名稱: [10點整]以前，量比大於[2]
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 時間HH點MM分的區間
// _p1數值: 90500=[9點05分],93000=[9點30分],100000=[10點整],103000=[10點30分],110000=[11點整]
// _p2參數: 量比的下限值
// _p2數值: 1,2,3,5
// 
input:_p2(2);//觸發標準
var:_BeginT(090000);//開始時間
input:_p1(100000);//結束時間
SetBackBar(10, "D");
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < _BeginT or CurrentTime > _p1 then return;
end else begin
        if Time < _BeginT or Time > _p1 then return;
end;
IF 1 * (GetField("量比", "D")[0] - _p2) > 0 then ret = 1;