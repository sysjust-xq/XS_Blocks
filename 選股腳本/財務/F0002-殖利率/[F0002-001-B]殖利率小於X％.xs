{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 殖利率小於X％
// 顯示名稱: [殖利率] < [3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0=[殖利率],1=[現金殖利率],2=[股票殖利率]
// _p2參數: 
// _p2數值: 1,2,3,4,5,7,10
// 
input:_p1(0);
input:_p2(3);
SetTotalBar(2); 
SetBarFreq("D");
if _p1 = 0 then value11 = GetField("殖利率");
if _p1 = 1 then value11 = GetField("現金股利殖利率");
if _p1 = 2 then value11 = GetField("股票股利殖利率");
if _p2 <> 0 and value11< _p2 and value11 <> 0 then ret=1; 
OutputField(1, Value11); 
OutputField(2, GetField("現金股利殖利率"));