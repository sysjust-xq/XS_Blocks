{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 夜星
// 顯示名稱: 夜星
// 執行頻率: 1分(非逐筆洗價)
// 
// 
settotalbar(3);                                                                                                                                                                                                                                                
var:_Count(0);

if getfieldDate("Date") <> GetField("Date")[1] then _Count = 0 else _Count += 1;

if _Count >= 3 then begin
	condition1= (close[2] - open[2]) > (high[2] - low[2]) * 0.75;                //狀況1:        前前期實體紅棒
	condition2= close[2] > close[3] + (high[3] - low[3]);                                //狀況2:        前前期波動放大
	condition3= low[1] > high[2] and close[1] > open[1];                                //狀況3:        前期高開收紅
	condition4= open < close[1] and close < open - (high[1] - low[1]);        //狀況4:        當期開低收黑K棒
end else begin
    condition1 = false;
    condition2 = false;
    condition3 = false;
    condition4 = false;
    condition5 = false;
end;

IF condition1 and  condition2 and condition3 and  condition4 THEN RET=1;