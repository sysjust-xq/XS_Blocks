{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: VHF近N日趨勢向上
// 顯示名稱: VHF近[10]日趨勢向上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20
// 
input: _p1(10);
settotalBar(42);
If upTrend(VHF(42),_p1) then ret = 1;