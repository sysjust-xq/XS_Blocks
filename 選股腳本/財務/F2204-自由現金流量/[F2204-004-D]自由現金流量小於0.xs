{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自由現金流量小於0
// 顯示名稱: 自由現金流量 < 0
// 執行頻率: 季
// 
// 
settotalBar(2);
If getField("自由現金流量") < 0 then ret = 1;
outputField1(getField("自由現金流量"),"自由現金流量");