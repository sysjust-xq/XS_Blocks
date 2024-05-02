{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 執行時段為開盤到[X點XX分]
// 顯示名稱: 執行時段為開盤到[9點30分]
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 結束的時間
// _p1數值: 090500=[9點05分],091000=[9點10分],091500=[9點15分],092000=[9點20分],092500=[9點25分],093000=[9點30分],100000=[10點整]
// 
Var: StartTime(000000);
Input: _p1(093000);
settotalBar(2);
if BarFreq = "D" then begin
        ret = CurrentTime >= StartTime and CurrentTime <= _p1;
end else begin
        ret = Time >= StartTime and Time <= _p1;
end;