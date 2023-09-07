{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 盈餘再投資比率大於N%
// 顯示名稱: 盈餘再投資比率 > [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,50,100,150,200
// 
input:_p1(10);
SetTotalBar(3); 
If GetField("長期投資") <> 0 and GetField("固定資產")<>0 and GetField("長期投資")[16] <> 0 and GetField("固定資產")[16]<>0 then 
value1 = ((GetField("長期投資")+GetField("固定資產"))-(GetField("長期投資")[16]+GetField("固定資產")[16]))/
summation(GetField("本期稅後淨利"),16)*100;
If value1 > _p1 then ret = 1;
outputField1(value1,"盈再率");