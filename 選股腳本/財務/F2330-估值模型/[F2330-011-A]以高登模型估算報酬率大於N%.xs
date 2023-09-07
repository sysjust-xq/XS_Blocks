{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 以高登模型估算報酬率大於N%
// 顯示名稱: 以高登模型估算報酬率 > [10]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,15,20,25,30
// 
//高登報酬率=股息殖利率+盈餘成長率
input:_p1(10);
SetTotalBar(3);
value1=average(GetField("股利合計","Y"),2);
value2=average(GetField("ROE", "Y"), 2);
value3=average(GetField("EPS", "Y"), 2);
value4=value2*(1-value1/value3);
value5=GetField("累計營收年增率", "M");
if value3 > 0 and value2 > 0 then
value6 = (value1/close+value4*0.01)*100
else
value6 = 0;
If value6 >_p1 and (value2/value3) > 0 then  ret=1;
OutputField(1, value1, 2, "股利");
OutputField(2, value2, 2, "ROE%");
OutputField(3, value3, 2, "EPS");
OutputField(4, value4, 2, "盈餘成長率(ROE)");
OutputField(5, value5, 2, "盈餘成長率(累計營收)");
OutputField(6, value6, 2, "報酬率(ROE)");
OutputField(7, value2/value3, 2, "ROE/EPS");