{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價小於每股淨值
// 顯示名稱: 收盤價 < 每股淨值
// 執行頻率: 日
// 
// 
settotalBar(3);
if close<GetField("每股淨值(元)","Q") then ret=1;