{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 管理費用率較上季減少
// 顯示名稱: 管理費用率較上季減少
// 執行頻率: 季
// 
// 
SetTotalBar(2);
if (GetField("管理費用")/GetField("營業收入淨額"))*100 < 
(GetField("管理費用")[1]/GetField("營業收入淨額")[1])*100 then ret=1;
OutputField(1,(GetField("管理費用")/GetField("營業收入淨額"))*100);
OutputField(2,(GetField("管理費用")[1]/GetField("營業收入淨額")[1])*100);