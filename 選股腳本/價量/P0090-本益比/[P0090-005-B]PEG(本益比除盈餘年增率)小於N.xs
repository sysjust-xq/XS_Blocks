{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: PEG(本益比除盈餘年增率)小於N
// 顯示名稱: PEG(本益比/盈餘年增率) < [0.6]
// 執行頻率: 日
// 
// 本益成長比(PEG) = 本益比 ÷ 稅後淨利成長率(盈餘成長率)
// _p1參數: 
// _p1數值: 0.6,0.75,1,1.2
// 
input:_p1(0.6);
settotalBar(3);
If getfield("稅後淨利成長率", "Y") <> 0 then
value1=getfield("本益比","D")/getfield("稅後淨利成長率", "Y");
If value1<_p1 then ret= 1;