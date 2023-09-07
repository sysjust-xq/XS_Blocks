{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: EPS連續N季獲利後突然轉盈為虧
// 顯示名稱: EPS連續[4]季獲利後突然轉盈為虧
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 2,3,4,8,12
// 
SetTotalBar(2);
input: _p1(4);
If trueAll(GetField("EPS")[1]>0,_p1) and GetField("EPS") < 0 then ret = 1;
outputField1(GetField("EPS"));