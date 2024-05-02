{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 預估殖利率大於N%
// 顯示名稱: 預估殖利率 > [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7,10
// 
input:_p1(5);
If GetField("殖利率")<> 0 then 
value1=GetField("殖利率")*1+GetField("累計營收年增率","M");
If value1 > _p1 and GetField("殖利率") <> 0 then ret = 1;
outputField1(value1,"預估殖利率");
outputField2(GetField("殖利率"),"殖利率");
outputField3(GetField("累計營收年增率","M"),"累計營收年增率");