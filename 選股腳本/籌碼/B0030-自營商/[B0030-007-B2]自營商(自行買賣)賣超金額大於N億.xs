{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自營商(自行買賣)賣超金額大於N億
// 顯示名稱: 自營商(自行買賣)賣超金額 > [1]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.2,0.3,0.5,1,1.5,2
// 
settotalBar(3);
input:_p1(1);
if GetField("自營商自行買賣買賣超")< 0 and (GetField("自營商自行買賣買賣超")*getfield("均價")/10)<(_p1*10000*-1)
then ret=1;
outputField1((GetField("自營商自行買賣買賣超")*getfield("均價")/10000));