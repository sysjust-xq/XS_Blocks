{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: BR指標昨日創N日新高,今日反轉向下(BR大於X)
// 顯示名稱: BR指標昨日創[100]日新高，今日反轉向下(BR>[80])
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,100
// _p2參數: 
// _p2數值: 50,60,80,100
// 
input:_p1(100),_p2(80);
value1 = BR(26);
settotalBar(_p1);
If value1[1]=highest(value1,_p1) and value1< value1[1]  and value1>_p2 then ret = 1;