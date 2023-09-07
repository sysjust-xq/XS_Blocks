{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季研發費用佔營業額比率大於N%
// 顯示名稱: 近[4]季研發費用佔營業額比率 > [1]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,4,8,12
// _p2參數: 
// _p2數值: 1,3,5,10,15,20,25
// 
input: _p1(4);
input: _p2(1);
settotalBar(3);
value1 = Summation(GetField("研發費用"), _p1);
value2 = Summation(GetField("營業收入淨額"), _p1);
If (value1/value2)*100 > _p2 then ret = 1;
outputField1((value1/value2)*100,"研發費用率");