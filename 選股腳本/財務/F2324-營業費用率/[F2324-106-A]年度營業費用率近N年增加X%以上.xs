{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度營業費用率近N年增加X%以上
// 顯示名稱: 年度營業費用率近[3]年增加[10]%以上
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 5,10,15,20,25
// 
SetTotalBar(3);
input: _p1(3);
input: _p2(10);

value1 = (GetField("營業費用率") - GetField("營業費用率")[_p1]);
if value1 >= _p2 then ret=1;
outputfield(1,value1,2,"近N期成長");