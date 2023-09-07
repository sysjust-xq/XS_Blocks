{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 稅前淨利率近N季衰退X%以上
// 顯示名稱: 稅前淨利率近[4]季衰退[10]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 0,5,10,15,20,25
// 
SetTotalBar(3);
input: _p1(4);
input: _p2(10);

value1 = (GetField("稅前淨利率") - GetField("稅前淨利率")[_p1]);
if value1 <= -1*_p2 then ret=1;
outputfield(1,value1,2,"近N期成長");