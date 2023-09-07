{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季每股盈餘波動度小於N%
// 顯示名稱: 近[8]季每股盈餘波動度 < [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 2,3,4,8,12
// _p2參數: 
// _p2數值: 0,1,3,5,10
// 
input:_p1(8);
input:_p2(10);
SetTotalBar(3); 
If VariancePS(GetField("EPS"),_p1,2)< _p2 then ret = 1;
outputField1(VariancePS(GetField("EPS"),_p1,2));