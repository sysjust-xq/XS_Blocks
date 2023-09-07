{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年此月份上漲機率超過X%的股票
// 顯示名稱: 近[10]年此月份上漲機率>[80]%的股票
// 執行頻率: 月
// 
// 去年開始算
// ex.2022/12月執行
// 2022/1(收盤)-20021/12(收盤)>0算一次
// _p1參數: 
// _p1數值: 3,5,7,10
// _p2參數: 
// _p2數值: 50,60,70,80
// 
if barfreq<>"M" then raiseruntimeerror("請把頻率改成月");
//月線限定版
input:_p1(10);
input:_p2(80);
array:m1[10](0);
variable:x(0),count(0);
for x=1 to _p1
begin
m1[x]=close[12*x-1]-close[12*x] ;
end;
count=0;
for x=1 to _p1
begin
if m1[x]>0
then count=count+1;
end;
if count/_p1*100>=_p2
then ret=1;
outputfield(1,count,0,"符合的次數");