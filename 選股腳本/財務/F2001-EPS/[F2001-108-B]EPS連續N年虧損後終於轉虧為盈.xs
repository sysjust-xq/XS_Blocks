{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: EPS連續N年虧損後終於轉虧為盈
// 顯示名稱: EPS連續[3]年虧損後終於轉虧為盈
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
SetTotalBar(2);
input: _p1(3);
If trueAll(GetField("EPS")[1]>0,_p1) and GetField("EPS") < 0 then ret = 1;
outputField1(GetField("EPS"));