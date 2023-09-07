{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 勁道指標出現賣出訊號
// 顯示名稱: 勁道指標出現賣出訊號
// 執行頻率: 日
// 
// 
settotalBar(10+2);
var:day(10);
value1=GetField("外盤量");
value6=getfield("內盤量");
value2=volume*(close-close[1]);
value8=average(volume,day);//均量
if value6<>0
then value7=(value1/value6)*volume;
value3=value7*(close-close[1]);
value4=average(value2,day)/value8;
value5=average(value3,day)/value8;

if linearregslope(value4,day) crosses below 0
and linearregslope(value5,day)<0
then ret=1;