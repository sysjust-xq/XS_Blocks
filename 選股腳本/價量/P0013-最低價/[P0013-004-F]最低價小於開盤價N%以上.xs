{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最低價小於開盤價N%以上
// 顯示名稱: 最低價 < 開盤價[5]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7
// 
input:_p1(5);
settotalbar(2);
value1 = ((GetField("最低價")-GetField("開盤價"))/GetField("最低價"))*100;
If value1 <-1* _p1  then ret = 1;
outputField1(value1);