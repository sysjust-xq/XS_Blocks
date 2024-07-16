{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數N日AR小於X
// 顯示名稱: 櫃買指數26日AR < 50
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:_Side(-1);
settotalBar(26);
if _Side = 1 and AR(26)>50 then
ret = 1
else if _Side = -1 and AR(26)<50 then
ret = 1;