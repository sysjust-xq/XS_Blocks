{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 管理費用率大於近N季平均高X%以上
// 顯示名稱: 管理費用率 > 近[4]季平均[5]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 0.5,1,3,5,10
// 
input: _p1(4); 
input: _p2(5);
SetTotalBar(3);
Value1 = (GetField("管理費用")/GetField("營業收入淨額"))*100;   
value3 = average((GetField("管理費用")/GetField("營業收入淨額"))*100,_p1);   
if value1 > value3+ _p2 then ret=1;
OutputField(1, Value1,"本期");
OutputField(2, value3,"平均");