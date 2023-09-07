{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 多頭母子
// 顯示名稱: 多頭母子
// 執行頻率: 日(逐筆洗價)
// 
// 前期收長黑K棒，今期開高小幅收紅不過昨高。
// 
var:_side(1);//1=多頭母子；-1=空頭母子。
settotalbar(3);

{判斷狀況}                                                                
if _side = 1 then begin
	condition1=(GetField("Open")[1] - GetField("Close")[1]) > (GetField("High")[1] -GetField("Low")[1]) * 0.75;//狀況1:前期出長黑K棒
	condition2=GetField("Close") > GetField("Open");//狀況2:當期紅棒
	condition3=GetField("High") < GetField("High")[1];//狀況3:高不過昨高
	condition4=GetField("Low")  > GetField("Low")[1];//狀況4:低不破昨低
end else if _side = -1 then begin
	condition1=(GetField("Open")[1] - GetField("Close")[1]) > (GetField("High")[1] -GetField("Low")[1]) * 0.75;//狀況1:前期實體紅棒
	condition2=GetField("Open") < GetField("Close");//狀況2:當期黑棒
	condition3=GetField("High") < GetField("High")[1];//狀況3:高不過昨高
	condition4=GetField("Low")  > GetField("Low")[1]; //狀況4:低不破昨低
end;

{結果判斷}
IF  condition1 and  condition2 and  condition3 and condition4 THEN RET=1;