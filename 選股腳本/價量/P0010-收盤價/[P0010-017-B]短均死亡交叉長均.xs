{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 短均死亡交叉長均
// 顯示名稱: [5]日均線向下穿越[20]日均線
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 5,7,10,15,20,60,120,240
// 
input:_p1(5);
input:_p2(20);
settotalbar(_p2+3);
If average(getField("Close"),_p1) cross below average(getField("Close"),_p2) then ret = 1;
outputField(1,average(getField("Close"),_p1));
outputField(2,average(getField("Close"),_p2));