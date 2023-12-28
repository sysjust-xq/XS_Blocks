{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: N張散戶持股人數排行
// 顯示名稱: [10]張散戶持股人數前100名
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,5,10,15,50,100,200
// 
input:_p1(10,numeric);
SetTotalBar(2); 
retval= GetField("散戶持股人數","W", param:=_p1);