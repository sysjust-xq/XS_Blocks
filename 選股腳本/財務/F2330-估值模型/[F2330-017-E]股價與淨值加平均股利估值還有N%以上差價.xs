{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與淨值加平均股利估值還有N%以上差價
// 顯示名稱: 股價與淨值加平均股利估值還有[10]%以上差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
settotalBar(3);
input:_p1(10);
if close*(1+_p1/100)< (average(getField("股利合計", "Y"),10)+getField("每股淨值(元)", "Y"))
then ret=1;
outputfield(1,close/(average(getField("股利合計", "Y"),10)+getField("每股淨值(元)", "Y")),2,"折價率");