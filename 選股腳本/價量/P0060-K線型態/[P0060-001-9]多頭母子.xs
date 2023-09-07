{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 多頭母子
// 顯示名稱: 多頭母子
// 執行頻率: 日
// 
// 
settotalbar(3);        
{判斷狀況}								
	condition1=	(open[1] - close[1]) > (high[1] -low[1]) * 0.75			;//狀況1:	前期出長黑K棒
	condition2=	close > open											;//狀況2:	當期紅棒
	condition3=	high < high[1]											;//狀況3:	高不過昨高
	condition4=	low  > low[1]											;//狀況4:	低不破昨低
{結果判斷}		
IF		
		condition1
	and	condition2
	and	condition3
	and	condition4
THEN	RET=1;