{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負向新聞較多
// 顯示名稱: 負向新聞較多
// 執行頻率: 日
// 
// 
value1=GetField("新聞正向分數");
value2=GetField("新聞負向分數");
value3 = value1 - value2;
if value3 < 0 then ret=1;