{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: N日零股量加總前100名
// 顯示名稱: [10]日零股量加總前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15
// 
input:_p1(10,numeric);
settotalBar(_p1+3);
value1 = summation(getfield("零股量"),_p1);
retval = value1;