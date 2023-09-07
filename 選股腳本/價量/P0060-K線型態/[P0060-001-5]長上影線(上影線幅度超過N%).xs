{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 長上影線(上影線幅度超過N%)
// 顯示名稱: 長上影線(上影線幅度超過[2]%)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,3,4
// 
input: _p1(2);
SetTotalBar(2);
SetBarFreq("D");
{判斷狀況}                                                                
        value1 = maxlist(open,close);
        condition1=        ( high - value1 ) > close[1] * _p1 * 0.01                ;//狀況1:        上影線幅度
        condition2=        ( open - close ) < ( high - value1 )                                ;//狀況2:        上影線大於實體
{結果判斷}                
IF                
                condition1
        and        condition2
THEN        RET=1;