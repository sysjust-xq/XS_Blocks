{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 從當日低點反彈大於N%
// 顯示名稱: 從當日低點反彈 > [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,1,3,5,7,10
// 
input:_p1(5);
settotalbar(2);
value1 = ((GetField("收盤價")-GetField("最低價"))/GetField("最低價"))*100;
If value1 > _p1 then ret = 1;
outputField1(value1);