{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 過去N日幾乎沒有新聞,今日突然一堆負向新聞
// 顯示名稱: 過去[5]日幾乎沒有新聞，今日突然一堆負向新聞
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(5);
input:_p2(5); 
SetTotalBar(3); 
condition1 = TrueAll(GetField("新聞聲量分數")[1] <=2, _p1);
condition2 = GetField("新聞負向分數") >= 5;
if condition1 and condition2 then ret=1;