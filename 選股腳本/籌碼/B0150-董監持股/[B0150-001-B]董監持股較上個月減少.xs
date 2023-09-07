{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 董監持股較上個月減少
// 顯示名稱: 董監持股較上個月減少
// 執行頻率: 月
// 
// 
SetTotalBar(2); 
Value1 = GetField("董監持股");
if Value1 < GetField("董監持股")[1] then ret=1; 
OutputField(1, Value1);