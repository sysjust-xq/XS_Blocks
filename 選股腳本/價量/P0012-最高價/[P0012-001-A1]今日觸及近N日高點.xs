{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日觸及近N日高點
// 顯示名稱: 今日觸及近[20]日高點
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,20,60,100,120,200,400
// 
Input:_p1(20);
settotalBar(_p1+2);
If getfield("最高價")=Highest(getfield("最高價"),_p1) then ret = 1;