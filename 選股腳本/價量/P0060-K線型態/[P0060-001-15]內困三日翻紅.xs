{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 內困三日翻紅
// 顯示名稱: 內困三日翻紅
// 執行頻率: 日
// 
// 
settotalbar(3);                                        
{判斷狀況}								
	condition1=	(open[2] - close[2]) > (high[2] -low[2]) * 0.75				;//狀況1:	前前期出長黑K棒
	condition2=	close[1] > open[1]											;//狀況2:	前期紅棒
	condition3=	high[1] < high[2]											;//狀況3:	高不過昨高
	condition4=	low[1]  > low[2]											;//狀況4:	低不破昨低
	condition5=	open < close[1] and open > open[1]							;//狀況5:	開在前期實體內
	condition6=	close > high[2]												;//狀況6:	收在多頭母子之上
{結果判斷}		
IF		
		condition1
	and	condition2
	and	condition3
	and	condition4
	and	condition5
	and	condition6
THEN	RET=1;