{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 盤整中(近N日震盪幅度小於X%)
// 顯示名稱: 盤整中(近[90]日震盪幅度<[20]%)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,20,60,90,120,240
// _p2參數: 
// _p2數值: 3,5,10,15,20,30
// 
input:_p1(90),_p2(20);
settotalBar(_p1+2);
value1=lowest(low,_p1);
ret = value1=lowest(low, _p1)
and highest(high,_p1)<=value1*(1+_p2/100);