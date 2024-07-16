{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤N日正乖離大於N%
// 顯示名稱: 大盤[20]日正乖離大於[5]%
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 5,10,20
// _p2參數: 正乖離的下限值
// _p2數值: 5,10
// 
Input: _p1(20);
Input: _p2(5);
settotalbar(_p1 + 3);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
ret = 1 * Bias(_p1) >= _p2;