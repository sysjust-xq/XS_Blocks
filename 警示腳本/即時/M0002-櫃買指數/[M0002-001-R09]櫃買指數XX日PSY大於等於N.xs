{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數XX日PSY大於等於N
// 顯示名稱: 櫃買指數12日PSY >= 50
// 執行頻率: 日(逐筆洗價)
// 
// PSY為人氣指標心理線，計算特定期間內，行情上漲期數的比例。
// 
Var:_Side(1);
settotalBar(12);
if _Side = 1 and PSY(12)>=50 then
ret = 1
else if _Side = -1 and PSY(12)<50 then
ret = 1;