{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日觸及近N日低點
// 顯示名稱: 今日觸及近[20]日低點
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,20
// 
Input:_p1(20);
settotalBar(_p1+2);
If getfield("最低價")=Lowest(getfield("最低價"),_p1) then ret = 1;