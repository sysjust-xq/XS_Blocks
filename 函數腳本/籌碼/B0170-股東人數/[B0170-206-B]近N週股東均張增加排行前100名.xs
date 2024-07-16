{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N週股東均張增加排行前100名
// 顯示名稱: 近[4]週股東均張增加排行前100名
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4
// 
input:_p1(4,numeric);
SetTotalBar(_p1+2); 
Value1 = 
(GetField("大戶持股張數", "W", param := 100) + GetField("散戶持股張數","W",param := 100)) / GetField("總持股人數","W")-
(GetField("大戶持股張數", "W", param := 100)[_p1] + GetField("散戶持股張數","W",param := 100)[_p1]) / GetField("總持股人數","W")[_p1];
if Value1 > 0 then retval=value1 else return ;