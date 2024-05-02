{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 執行時段為[X點XX分]到[XX點XX分]
// 顯示名稱: 執行時段為[9點30分]到[12點30分]
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 開始的時間
// _p1數值: 093000=[9點30分],100000=[10點整],103000=[10點30分]
// _p2參數: 結束的時間
// _p2數值: 120000=[12點整],123000=[12點30分],130000=[13點整]
// 
Input: _p1(093000);
Input: _p2(123000);
settotalBar(2);
if BarFreq = "D" then begin
        ret = CurrentTime >= _p1 and CurrentTime <= _p2;
end else begin
        ret = Time >= _p1 and Time <= _p2;
end;