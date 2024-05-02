{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 執行時段為[XX點整]到收盤
// 顯示名稱: 執行時段為[13點整]到收盤
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 開始的時間
// _p1數值: 120000=[12點整],123000=[12點30分],130000=[13點整],130500=[13點05分],131000=[13點10分],131500=[13點15分],132000=[13點20分],132500=[13點25分]
// 
Input: _p1(130000);
Var: EndTime(240000);
settotalBar(2);
if BarFreq = "D" then begin
        ret = CurrentTime >= _p1 and CurrentTime <= EndTime;
end else begin
        ret = Time >= _p1 and Time <= EndTime;
end;