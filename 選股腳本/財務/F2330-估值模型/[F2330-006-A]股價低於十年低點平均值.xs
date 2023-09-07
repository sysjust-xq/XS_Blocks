{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價低於十年低點平均值
// 顯示名稱: 股價低於十年低點平均值
// 執行頻率: 日
// 
// 
SetTotalBar(3);
value1=(lowY(1)+lowY(2)+lowY(3)+lowY(4)+lowY(5)
+lowY(6)+lowY(7)+lowY(8)+lowY(9)+lowY(10))/10;
if close<value1
then ret=1;