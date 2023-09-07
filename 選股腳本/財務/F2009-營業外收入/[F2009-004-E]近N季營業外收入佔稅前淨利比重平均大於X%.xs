{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季營業外收入佔稅前淨利比重平均大於X%
// 顯示名稱: 近[4]季營業外收入佔稅前淨利比重平均 > [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 10,20,30,50
// 
input: _p1(4);
input:_p2(10);
SetTotalBar(3);
value1 = summation(GetField("營業外收入及支出"),_p1)[value98];
value2 = summation(GetField("稅前淨利"),_p1)[value98];
value3 = 100 * value1 / value2;
if value3 > _p2 then ret=1;
outputField(1, value3, 2, "比例%");