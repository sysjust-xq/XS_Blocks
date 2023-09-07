{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 內困三日翻黑
// 顯示名稱: 內困三日翻黑
// 執行頻率: 日(逐筆洗價)
// 
// 前兩期為長紅棒後包黑K棒，當期往下跌破紅棒開盤價。
// 
Var:_side(-1);//1=內困三日翻紅。-1=內困三日翻黑。
settotalbar(1);        

{判斷狀況}
if _side = 1 then begin
	condition1=(close[2] - open[2]) > (high[2] -low[2]) * 0.75;//狀況1:前前期出長黑K棒
	condition2=open[1] > close[1];//狀況2:前期紅棒
	condition3=high[1] < high[2];//狀況3:高不過昨高
	condition4=low[1]  > low[2];//狀況4:低不破昨低
	condition5=close < open[1] and close > close[1];//狀況5:開在前期實體內
	condition6=open > high[2];//狀況6:收在多頭母子之上
end else if _side = -1 then begin
	condition1=(close[2] - open[2]) > (high[2] -low[2]) * 0.75;//狀況1:前前期出長紅K棒
    condition2=close[1] < open[1];//狀況2:前期黑棒
    condition3=high[1] < high[2];//狀況3:高不過昨高
    condition4=low[1]  > low[2];//狀況4:低不破昨低
    condition5=open > close[1] and open < open[1];//狀況5:開在前期實體內
    condition6=close < low[2];//狀況6:收在空頭母子之下
end;
{結果判斷}
IF condition1 and  condition2 and condition3 and condition4 and condition5 and condition6 THEN RET=1;