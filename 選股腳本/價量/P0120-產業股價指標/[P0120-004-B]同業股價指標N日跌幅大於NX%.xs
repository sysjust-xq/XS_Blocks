{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 同業股價指標N日跌幅大於NX%
// 顯示名稱: 同業股價指標[3]日跌幅>=[5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20,60
// _p2參數: 
// _p2數值: 2,2.5,3,5,10,15
// 
input:_p1(3),_p2(5); 
SetTotalBar(3); 
if RateOfChange(GetField("同業股價指標"),_p1) < -1*_p2 then ret=1; 
outputField1(RateOfChange(GetField("同業股價指標"),_p1));