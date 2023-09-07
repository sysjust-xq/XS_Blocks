{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 紅K棒(幅度超過N%)
// 顯示名稱: 紅K棒(幅度超過[3]%)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,1,2,3,4,5,6
// 
input: _p1(3);
settotalbar(1);        
{判斷狀況}                                                                
        condition1=        close > open;                                                                        //狀況1:        實體上漲K棒
        value1 = iff(open<>0,(close / absvalue(open) - sign(open)) * 100,0);
        condition2=        absvalue(value1) > _p1;                                                //狀況2:        幅度滿足
{結果判斷}                
IF                
                condition1 and condition2
THEN        RET=1;        
outputField(1,value1,"幅度",order:=1);