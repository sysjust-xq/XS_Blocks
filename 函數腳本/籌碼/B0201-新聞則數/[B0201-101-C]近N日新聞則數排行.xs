{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日新聞則數排行
// 顯示名稱: 近[5]日新聞則數排行
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20
// 
input:_p1(5,numeric);
SetTotalBar(2); 
retval = Summation(GetField("新聞聲量分數"), _p1);