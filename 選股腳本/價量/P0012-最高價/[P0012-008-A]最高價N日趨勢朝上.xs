{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最高價N日趨勢朝上
// 顯示名稱: 最高價[20]日趨勢朝上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
Input:_p1(20);
SetTotalBar(2);
If Average(getField("最高價"),_p1)>Average(getField("最高價"),_p1)[1] then ret = 1;