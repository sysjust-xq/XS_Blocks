{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 比大盤強(超過N%)
// 顯示名稱: 比大盤強(超過[1]%)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,1,2,3,5,7,10,20,25,30
// 
input: _p1(1);
SetTotalBar(2);
SetBarFreq("AD");
value1 = RateOfChange(Close, 1);
value2 = RateOfChange(GetSymbolField("TSE.TW", "Close"), 1);
if value1 >= value2+_p1 then ret=1;
OutputField(1, value1, 2, "幅度%");