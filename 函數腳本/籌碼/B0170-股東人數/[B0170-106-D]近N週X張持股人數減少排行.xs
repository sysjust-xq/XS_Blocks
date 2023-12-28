{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N週X張持股人數減少排行
// 顯示名稱: 近[4]週[1000]張持股人數減少排行
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// _p2參數: 
// _p2數值: 400,600,800,1000
// 
input:_p1(4,numeric),_p2(1000,numeric);
If GetField("大戶持股人數","W", param:=_p2)-GetField("大戶持股人數","W", param:=_p2)[_p1] < 0
then 
retval =GetField("大戶持股人數","W", param:=_p2)-GetField("大戶持股人數","W", param:=_p2)[_p1]
else
return;