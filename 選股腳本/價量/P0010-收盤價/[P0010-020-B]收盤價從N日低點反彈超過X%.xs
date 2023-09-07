{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價從N日低點反彈超過X%
// 顯示名稱: 收盤價從[60]日低點反彈超過[10]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 1,2,3,5,10,15,20,25,30,35,40
// 
input:_p1(60), _p2(10);
settotalbar(3);
value2 = Simplelowest(GetField("最低價")[1],_p1); 
If GetField("收盤價") > value2 and GetField("收盤價")>value2*(1+(_p2/100)) then ret = 1;
outputField1(value2);