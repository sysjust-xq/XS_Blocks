{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: MO跌破X
// 顯示名稱: MO跌破[100]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 80,90,100
// 
input:length(10,"期數"),_p1(100);
value1 = MO(10);  
settotalBar(length*2);
If value1 cross below _p1 then ret = 1;