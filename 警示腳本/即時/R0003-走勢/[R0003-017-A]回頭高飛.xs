{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 回頭高飛
// 顯示名稱: 回頭高飛
// 執行頻率: 1分(非逐筆洗價)
// 
// 開高後，拉回又再拉漲停
// 
var:_Count(0);
//開高5%以上，拉回又再拉漲停
settotalbar(3+2);
if getfieldDate("日期") <> getfieldDate("日期")[1] then _Count = 0 else _Count += 1;
if _Count >= 1 then begin
        condition1 = (Close  =  GetField("漲停價", "D"));
        condition2 = (GetField("Open", "D") > GetField("RefPrice", "D") *1.05);
        condition3 = (GetField("Low", "D") < GetField("Open", "D"));
        condition4 =  close > close[1];
end else begin
        condition1 = false;
        condition2 = false;
        condition3 = false;
        condition4 = false;
end;        
if condition1 and condition2 and condition3 and condition4 then ret=1;