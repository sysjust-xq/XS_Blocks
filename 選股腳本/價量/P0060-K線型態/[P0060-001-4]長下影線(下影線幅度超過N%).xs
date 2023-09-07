{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 長下影線(下影線幅度超過N%)
// 顯示名稱: 長下影線(下影線幅度超過[2]%)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,3,4
// 
input: _p1(2);
SetTotalBar(2);
SetBarFreq("D");
	value1 = minList(open,close);
	condition1=	( value1 - low ) > close[1] * _p1 * 0.01		;//狀況1:	下影線幅度
	condition2=	( open - close ) < ( value1 - low )				;//狀況2:	下影線大於實體
{結果判斷}		
IF		
		condition1
	and	condition2
THEN	RET=1;