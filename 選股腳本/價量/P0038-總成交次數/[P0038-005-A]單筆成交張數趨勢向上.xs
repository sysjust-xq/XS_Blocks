{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單筆成交張數趨勢向上
// 顯示名稱: 單筆成交張數趨勢朝上
// 執行頻率: 日
// 
// 
settotalBar(13);                                                                                                                                                                                                                                                                                               
If GetField("總成交次數","D")<>0 Then 
   value1=V/GetField("總成交次數","D");                                                                                                                                                                                                                                                                                                                                                                                                                       
If average(value1,3) Cross Over average(value1,13) then ret = 1;