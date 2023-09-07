{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日漲幅比同期大盤漲幅X%
// 顯示名稱: 近[5]日漲幅比同期大盤漲幅 > [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60
// _p2參數: 
// _p2數值: 0,1,2,3,5,7,10,20,25,30
// 
input: _p1(5);
input: _p2(5);
SetTotalBar(2);
SetBarFreq("AD");
value1 = RateOfChange(Close, _p1);
value2 = RateOfChange(GetSymbolField("TSE.TW", "Close"), _p1);
if value1 > 0 and value1 >= value2 + _p2 then ret=1;
OutputField(1, value1, 2, "幅度%");