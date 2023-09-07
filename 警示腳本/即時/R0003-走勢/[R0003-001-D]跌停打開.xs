{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 跌停打開
// 顯示名稱: 跌停打開
// 執行頻率: 1分(非逐筆洗價)
// 
// 此條件不支援回測，因為有用到五檔報價資訊。
// 
var: intrabarpersist _Count(0);
condition1 = false;
if GetFieldDate("Date") <> GetFieldDate("Date")[1] then _Count = 0; //換日歸零
if _Count = 1 then begin //曾經跌停鎖住
        if Close > GetField("跌停價","D") then condition1 = true;
        if Close = GetField("跌停價","D") and q_bid = GetField("跌停價","D") then condition1 = true;
        if condition1 then _Count = 0;
end;
if Close = GetField("跌停價","D") and q_ask = 999999999 then _Count = 1; //跌停鎖住
if condition1 then ret=1;