{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: BR指標昨日創N日新低,今日反轉向上(BR小於X)
// 顯示名稱: BR指標昨日創[100]日新低，今日反轉向上(BR<[30])
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,100
// _p2參數: 
// _p2數值: 0,10,20,30
// 
input:_p1(100),_p2(30);
value1 = BR(26);
settotalBar(_p1);
If value1[1]=lowest(value1,_p1) and value1> value1[1] and value1<_p2 then ret = 1;