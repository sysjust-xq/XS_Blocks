{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與十年本業獲利估值還有N%差價
// 顯示名稱: 股價與十年本業獲利估值還有[10]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,15,20,25,30,35,40
// 
SetTotalBar(10);
variable: idx(0), t(0);
input:r1(3);
input:r2(2);
input:_p1(10);
setinputname(1,"假設未來十年營業利益年成長率");
setinputname(2,"未來十年平均年利率");
setinputname(3,"未來獲利折現合計淨值與市價比");
// 計算未來10年的營業利益折現值
value1=GetField("營業利益","Y");                //單位:百萬
value2=GetField("最新股本");                        //單位:億
value3=GetField("每股淨值(元)","y");
value11 = maxlist(GetField("營業利益","Y"),GetField("營業利益","Y")[1],GetField("營業利益","Y")[2],GetField("營業利益","Y")[3],GetField("營業利益","Y")[4]);
value12 = minlist(GetField("營業利益","Y"),GetField("營業利益","Y")[1],GetField("營業利益","Y")[2],GetField("營業利益","Y")[3],GetField("營業利益","Y")[4]);
if trueall(value1>0,5) and (value11-value12)/value11<0.5
then begin
t = 0;
for idx =1 to 10
begin
        t = t + value1 * power(1+r1/100,idx)/power(1+r2/100,idx);
end;
// t=百萬,value2=億,換成每股
value5 = t / value2 / 100;
value6=(value3+value5);

if close< value6*(1-_p1/100)
then ret=1;
end;
outputfield(1, value5, 2, "估算十年每股營業利益折現值");
outputfield(2, value6, 2, "估值");