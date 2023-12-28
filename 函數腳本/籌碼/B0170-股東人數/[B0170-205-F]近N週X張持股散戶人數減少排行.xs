{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N週X張持股散戶人數減少排行
// 顯示名稱: 近[4]週[10]張持股散戶人數減少排行
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// _p2參數: 
// _p2數值: 1,5,10,15,50,100,200
// 
input:_p1(4,numeric);
input:_p2(10,numeric);
SetTotalBar(_p1+2); 
Value1 = GetField("散戶持股人數","W", param:=_p2)- GetField("散戶持股人數","W", param:=_p2)[_p1];
if Value1 < 0 then retval=value1 else return;