{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 突破下降趨勢線
// 顯示名稱: 突破下降趨勢線
// 執行頻率: 日(逐筆洗價)
// 
// 
var:in1(70);
settotalBar(100);//尋找不同區間大小下目測所認為的高點。
value1=highest(H,in1);//找出一定區間的高點
if value1>value1[1] then value2=value1;//如果高點變高則保留高點，這樣做的原因是可以找到一波下降之後的高點
condition1 = value2=value2[1];//條件:保留之高點維持(階梯的平台)
condition2 = trueall(condition1,in1);//在計算區間內高點都沒有變
if condition2 and not condition2[1] then begin
	value6=value5;
	value5=value4;
	value4=value3;
	value3=value2;
end;
condition3 = value3-value2<value4-value3 and value4-value3<value5-value4 and value5-value4<value6-value5 and value3-value2>0;//平台的高度一階比一階低
ret = condition3[1] and not condition3;