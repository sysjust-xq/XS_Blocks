{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 管理費用率創N季新低
// 顯示名稱: 管理費用率創[4]季新低
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input: _p1(4); 
SetTotalBar(_p1);
Value1 = (GetField("管理費用")/GetField("營業收入淨額"))*100;
value3 = Simplelowest((GetField("管理費用")[1]/GetField("營業收入淨額")[1])*100,  _p1);       
if value1 < value3 then ret=1;