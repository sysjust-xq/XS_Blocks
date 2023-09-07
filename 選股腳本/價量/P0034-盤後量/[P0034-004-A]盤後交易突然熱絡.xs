{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 盤後交易突然熱絡
// 顯示名稱: 盤後交易突然熱絡
// 執行頻率: 日
// 
// 
input:p1(10),p2(10),p3(5);
settotalBar(p1+3);
If trueAll(getfield("盤後量")[1]<10,p1) 
and getfield("盤後量") > average(getfield("盤後量"),p1) *p3
then ret = 1;
outputField1(getfield("盤後量"));
outputField2(average(getfield("盤後量"),p1));