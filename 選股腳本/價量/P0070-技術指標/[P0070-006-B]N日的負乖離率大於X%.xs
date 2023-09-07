{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日的負乖離率大於X%
// 顯示名稱: [6]日的負乖離率大於[3.5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 6,12,20
// _p2參數: 
// _p2數值: 1,3,3.5,5,5.5,6,7,15
// 
input:_p1(6);
input:_p2(3.5);
setbarfreq("AD");
SetTotalBar(_p1 + 3);
value1 = Bias(_p1);
if value1 < 0 and absvalue(value1) >= _p2 then ret=1;
outputfield(1,value1,2,"乖離率%");