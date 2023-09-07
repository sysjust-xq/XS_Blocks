{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季合計資本支出佔總盈餘比重大於等於X%
// 顯示名稱: 近[4]季合計資本支出佔總盈餘比重 >= [60]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 5,10,20,40,50,60
// 
input: _p1(4);
input: _p2(60);
value1 = Summation(GetField("資本支出金額"), _p1);
value2 = Summation(GetField("本期稅後淨利"), _p1);
IF (value1 /value2)*100 >_p2 then ret = 1;
outputField1(value1);
outputField2(value2);
outputField3((value1 /value2)*100);