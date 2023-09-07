{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日力道指標近X期趨勢向上
// 顯示名稱: [10]日力道指標近[5]期趨勢向上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,15,20
// _p2參數: 
// _p2數值: 3,5,10
// 
input:_p1(10),_p2(5);
SetTotalBar(_p1+3);
value1 = summation((close-close[1])*volume/100,_p1)/_p1;
ret = upTrend(value1,_p2);