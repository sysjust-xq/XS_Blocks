{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本益成長比(PEG)小於N
// 顯示名稱: 本益成長比(PEG) < [0.75]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,0.5,0.7,0.75,1,1.5
// 
input: _p1(0.75);
SetTotalBar(3); 
if getfield("本益比","D")/getfield("稅後淨利成長率","Y") < _p1 then ret = 1;
outputfield(1, getfield("本益比","D")/getfield("稅後淨利成長率","Y"), 2, "A/B");