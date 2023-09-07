{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 九陽神功
// 顯示名稱: 九陽神功
// 執行頻率: 1分(非逐筆洗價)
// 
// 在一分鐘線，出現連續九根紅K棒
// 
// 連續9筆上漲
SettotalBar(10);

Var:_Count(0);

if getfieldDate("Date") <> GetField("Date")[1] then _Count = 0 else _Count += 1;

if _Count >= 8 then
        Condition1 = TrueAll(Close > Close[1], 9)
else
        Condition1 = False;
        
if Condition1 then ret = 1;