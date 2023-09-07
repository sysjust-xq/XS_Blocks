{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 至少還有N天才融券回補
// 顯示名稱: 至少還有[15]天才融券回補
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30,50,100
// 
settotalBar(3);
input:_p1(15);
If DateDiff(GetField("融券最後回補日"), Date) >_p1 then ret = 1;