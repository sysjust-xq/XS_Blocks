{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日最高價小於前N日最高價X%以上
// 顯示名稱: 今日最高價小於前[5]日最高價[3]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7
// _p2參數: 
// _p2數值: 0,1,2,3,5,7
// 
input:_p1(5),_p2(3);
settotalbar(3);
value1 = ((GetField("最高價")-GetField("最高價")[_p1])/GetField("最高價")[_p1])*100;
If value1 > _p2  then ret = 1;
outputField1(value1);