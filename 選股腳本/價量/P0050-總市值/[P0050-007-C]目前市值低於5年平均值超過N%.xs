{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 目前市值低於5年平均值超過N%
// 顯示名稱: 目前市值低於5年平均值超過[20]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,25
// 
settotalBar(3);
input:_p1(20);
if ((summation(GetField("總市值(億)","Y"),5)/5)/GetField("總市值(億)","D")-1)*100>_p1 then ret=1;
outputfield(1,((summation(GetField("總市值(億)","Y"),5)/5)/GetField("總市值(億)","D")-1)*100,0,"低於平均市值的幅度");