{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本業ROE小於N%
// 顯示名稱: 本業ROE < [15] %
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,15,20,30,45,50
// 
settotalBar(2);
input:_p1(15);
ret = summation(getField("營業利益", "Q"),4)/getField("股東權益總額", "Q")*100 <_p1;
outputField1(summation(getField("營業利益", "Q"),4)/getField("股東權益總額", "Q")*100);