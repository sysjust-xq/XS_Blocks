{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日以來第一次突破X日均線
// 顯示名稱: [30]日以來第一次突破[20]日均線
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,60,90,120,240
// _p2參數: 
// _p2數值: 20,30,60,90
// 
input:_p1(30),_p2(20);
SetTotalBar(_p1+10);
value1 = barslast(close cross over average(close, _p2));
if currentBar < gettotalBar then return;
condition1 = value1 = 0; //今日突破月線
condition2 = value1[1] + 1 >= _p1; // 上一次發生時是N日之前
ret = condition1 and condition2;