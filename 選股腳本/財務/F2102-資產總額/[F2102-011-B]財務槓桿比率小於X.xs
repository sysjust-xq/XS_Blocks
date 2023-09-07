{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 財務槓桿比率小於X
// 顯示名稱: 財務槓桿比率 < [3]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,3,5,10
// 
input:_p1(3);
SetTotalBar(3);
If GetField("股東權益總額") <> 0 then 
value1 = GetField("資產總額")/GetField("股東權益總額");
If value1 < _p1 then ret = 1;
outputField1(value1);