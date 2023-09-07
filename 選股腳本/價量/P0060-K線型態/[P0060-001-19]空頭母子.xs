{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 空頭母子
// 顯示名稱: 空頭母子
// 執行頻率: 日
// 
// 
settotalbar(1);        
	condition1=	(close[1] - open[1]) > (high[1] -low[1]) * 0.75			;//狀況1:	前期實體紅棒
	condition2=	close < open											;//狀況2:	當期黑棒
	condition3=	high < high[1]											;//狀況3:	高不過昨高
	condition4=	low  > low[1]											;//狀況4:	低不破昨低
{結果判斷}		
IF		
		condition1
	and	condition2
	and	condition3
	and	condition4
THEN	RET=1;