{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 市值低於5年平均市值N%以上
// 顯示名稱: 市值低於5年平均市值[20]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 8,10,12,13,15,20,50
// 
SetTotalBar(3); 
value1=(GetField("總市值(億)","Y")+GetField("總市值(億)","Y")[1]+
GetField("總市值(億)","Y")[2]+GetField("總市值(億)","Y")[3]+
GetField("總市值(億)","Y")[4])/5;
value2=GetField("總市值(億)","D");
input:_p1(20);
if (value1/value2-1)*100>_p1 then ret=1;
outputfield(1,(value1/value2-1)*100,0,"低於平均市值的幅度");