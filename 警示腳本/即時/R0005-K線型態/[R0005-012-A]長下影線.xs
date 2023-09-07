{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 長下影線
// 顯示名稱: 長下影線, 下影線幅度超過[2]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 下影線幅度的下限值
// _p1數值: 2,3,4
// 
input:_p1(2);
Var:_side(1);//1為長下影線；-1為長上影線
SetBackBar(10, "D");
settotalbar(2);

{判斷狀況}
if _side = 1 then begin                                                                 
        value1 = minList(GetField("開盤價","D"),GetField("收盤價","D"));
        condition1= ( value1 - GetField("最低價", "D") ) > GetField("收盤價", "D")[1] * _p1 * 0.01;//狀況1:下影線幅度
        condition2= ( GetField("開盤價", "D") - GetField("收盤價", "D") ) < ( value1 - GetField("最低價", "D") );//狀況2:下影線大於實體
end else if _side = -1 then begin
        value1 = maxlist(GetField("開盤價","D"),GetField("收盤價","D"));
        condition1= ( GetField("最低價", "D") - value1 ) > GetField("收盤價","D")[1] * _p1 * 0.01;//狀況1:上影線幅度
        condition2= ( GetField("開盤價", "D") - GetField("收盤價","D") ) < ( GetField("最低價", "D") - value1 );//狀況2:上影線大於實體
end;
        
{結果判斷}
IF condition1 and condition2 THEN RET=1;