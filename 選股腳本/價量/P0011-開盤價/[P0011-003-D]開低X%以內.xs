{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開低X%以內
// 顯示名稱: 開低[3]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7
// 
input:_p1(3);
SetTotalBar(2);
if GetField("參考價")[0] = 0 then value1 = 0 
else value1 = 100*(GetField("開盤價")/GetField("參考價")[0]-1);
if value1 < 0 and value1 > -_p1 then  ret = 1;