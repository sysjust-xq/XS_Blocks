{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 內部人持股比例較上個月增加
// 顯示名稱: 內部人持股比例較上個月增加
// 執行頻率: 月
// 
// 
SetTotalBar(2); 
Value1 = GetField("內部人持股比例");
if Value1 > GetField("內部人持股比例")[1] then ret=1; 
OutputField(1, Value1);