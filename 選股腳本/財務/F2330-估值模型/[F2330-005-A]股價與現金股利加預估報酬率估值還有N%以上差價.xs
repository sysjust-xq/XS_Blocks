{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與現金股利加預估報酬率估值還有N%以上差價
// 顯示名稱: 股價與現金股利加預估報酬率估值還有[10]%以上差價
// 執行頻率: 日
// 
// 以過去五年的平均現金股利作為未來股價的計算基礎，並將當前收盤價相比，計算目前的折價率
// _p1參數: 
// _p1數值: 6,7,8,9,10,12,15
// 
input:r(6,"年預期報酬率單位%");
input:_p1(10);
SetTotalBar(3);
value1=(GetField("現金股利","Y")+GetField("現金股利","Y")[1]
+GetField("現金股利","Y")[2]+GetField("現金股利","Y")[3]
+GetField("現金股利","Y")[4])/5 ;
if value1>1 then begin
value2=value1/r*100;
if close<>0 then 
value3=(value2-close)/close*100;
if value3>_p1
then ret=1;
outputfield(1,value3,0,"折價率");
outputfield(2,value1,1,"平均現金股利");
outputfield(3,value2,1,"合理股價");
end;