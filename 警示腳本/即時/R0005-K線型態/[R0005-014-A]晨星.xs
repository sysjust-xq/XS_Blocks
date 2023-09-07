{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 晨星
// 顯示名稱: 晨星
// 執行頻率: 1分(非逐筆洗價)
// 
// 
settotalbar(5);
var:_Count(0);

if getfieldDate("Date") <> GetField("Date")[1] then _Count = 0 else _Count += 1;

if _Count >= 3 then begin
        condition1=(open[2] - close[2]) > (high[2] - low[2]) * 0.75; //狀況1:        前前期出黑K棒
        condition2=close[2] < close[3] - (high[3] - low[3]);                //狀況2:        跌勢擴大
        condition3=(close - open) > (high -low) * 0.75;                      //狀況3:        當期收紅K棒
        condition4=close> close[2];                                                        //狀況4:        收復黑棒收盤價
        condition5=close[1] <= close[2] and close[1] < open;           //狀況5:        前低收盤為三期低點
end else begin
        condition1 = false;
        condition2 = false;
        condition3 = false;
        condition4 = false;
        condition5 = false;
end;

IF condition1 and condition2 and condition3 and condition4 and condition5 THEN RET=1;