{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 庫藏股買回比例大於X%
// 顯示名稱: 庫藏股買回比例 > [10]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,50,70,80
// 
input:_p1(10);
SetTotalBar(3);  
If GetField("庫藏股預計買回張數") <> 0 then 
value3 = GetField("庫藏股實際買回張數")/(GetField("庫藏股預計買回張數"))*100;
if GetField("庫藏股開始日期") > 0 then Value1 = -DateDiff(GetField("庫藏股開始日期"),CurrentDate) else Value1 = -1; 
if Value1 <= 90 and Value1 >= 0  and value3 > _p1
then  ret =1; 
outputField1( GetField("庫藏股預計買回張數"),"庫藏股預計買回張數");
outputField2( GetField("庫藏股實際買回張數"),"庫藏股實際買回張數");
outputField3(GetField("庫藏股開始日期"),"庫藏股開始日期");
outputField4(value3,"庫藏股買回比例");