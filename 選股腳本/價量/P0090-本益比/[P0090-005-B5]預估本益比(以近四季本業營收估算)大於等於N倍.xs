{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 預估本益比(以近四季本業營收估算)大於等於N倍
// 顯示名稱: 預估本益比(以近四季本業營收估算) >= [10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,6,7,8,9,10
// 
input:_p1(10);
settotalBar(3);
value5= summation(GetField("營業利益","Q"),4)/(GetField("最新股本")*10);//每股預估EPS
ret = value5>0 and close/value5 >= _p1;
outputField1(close/value5);