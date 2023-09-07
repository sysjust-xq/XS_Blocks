{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季有效稅率最高最低差大於X個百分點
// 顯示名稱: 近[4]季有效稅率最高最低差 > [5]個百分點
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 1,5,10,15,20,25
// 
input:_p1(4);
input:_p2(5);
SetTotalBar(3);
If Highest(GetField("有效稅率"),_p2) - lowest(GetField("有效稅率"),4) > _p2 then ret = 1;
outputField1(Highest(GetField("有效稅率"),4));
outputField2(lowest(GetField("有效稅率"),4));