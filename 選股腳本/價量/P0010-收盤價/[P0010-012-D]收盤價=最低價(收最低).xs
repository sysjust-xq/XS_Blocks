{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價=最低價(收最低)
// 顯示名稱: 收最低
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")=getField("最低價")[0] then ret = 1;