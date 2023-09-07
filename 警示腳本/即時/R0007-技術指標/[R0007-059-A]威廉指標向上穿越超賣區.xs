{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 威廉指標向上穿越超賣區
// 顯示名稱: [14]日威廉指標向上穿越超賣區
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的威廉指標期數
// _p1數值: 14,28,42
// 
Input: _p1(14);//參數14、28、42。
Var: _Side(1);//1為正向；-1為負向。
settotalBar(_p1+2);
value1 = PercentR(_p1) - 100;
if _Side = 1 and value1 Cross Above -80 then ret = 1
else if _Side = -1 and value1 Cross below -20 then ret = 1;