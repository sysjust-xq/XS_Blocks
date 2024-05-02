{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 經過N日後融資維持率終於向上突破X%
// 顯示名稱: 經過[3]日後融資維持率終於向上突破[150]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 30,40,50,75,150
// 
SetTotalBar(3);
input:_p1(3);
input:_p2(150);
If GetField("融資維持率") > _p2 and lowest(GetField("融資維持率"),_p1) <_p2 
and lowest(GetField("融資維持率"),_p1)>0 and getfield("融資餘額張數") > 0 then ret = 1;
outputField1(GetField("融資維持率"),"今天融資維持率");
outputField2(lowest(GetField("融資維持率"),_p1),"近N日最低融資維持率");