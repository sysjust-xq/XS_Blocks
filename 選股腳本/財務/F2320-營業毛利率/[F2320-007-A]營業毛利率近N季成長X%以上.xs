{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營業毛利率近N季成長X%以上
// 顯示名稱: 營業毛利率近[4]季成長[10]%以上
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

value1 = (GetField("營業毛利率") - GetField("營業毛利率")[_p1]);
if value1 >= _p2 then ret=1;
outputfield(1,value1,2,"近N期成長");