{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收年增率成長N期後轉為衰退X%以上
// 顯示名稱: 月營收年增率成長[3]期後轉為衰退[5]%以上
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,9,12
// _p2參數: 
// _p2數值: 5,10,20,30,50
// 
input: _p1(3); 
input: _p2(5); 
SetTotalBar(3);
If trueAll(GetField("月營收年增率")[1]>0,_p1) and GetField("月營收年增率")<_p2*-1 then ret = 1;
outputField1(GetField("月營收年增率"),"月營收年增率");