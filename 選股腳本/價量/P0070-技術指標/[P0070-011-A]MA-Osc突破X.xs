{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: MA-Osc突破X
// 顯示名稱: MA-Osc突破[0]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,10,20,30,50
// 
input:length(10,"期數"),_p1(0);
value1 = MA_Osc(5,10);
settotalBar(10+2);
If value1 cross above _p1 then ret = 1;