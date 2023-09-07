{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日力道指標突破X日力道指標
// 顯示名稱: [10]日力道指標突破[20]日力道指標
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20
// _p2參數: 
// _p2數值: 10,15,20,60
// 
input:_p1(10),_p2(20);
SetTotalBar(_p2+3);
value1 = summation((close-close[1])*volume/100,_p1)/_p1;
value2 = summation((close-close[1])*volume/100,_p2)/_p2;
ret = value1 cross Above value2;