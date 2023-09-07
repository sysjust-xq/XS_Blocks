{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日交易家數排行
// 顯示名稱: 近[1]日交易家數排行前100
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(1,numeric);
SetTotalBar(2); 
retval = Summation(GetField("分公司交易家數"), _p1);