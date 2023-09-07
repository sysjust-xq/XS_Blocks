{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 基金持有檔數較上季減少
// 顯示名稱: 基金持有檔數較上季減少
// 執行頻率: 季
// 
// 
SetTotalBar(2); 
Value1 = GetField("股票基金持有檔數");
if Value1 < GetField("股票基金持有檔數")[1] then ret=1; 
OutputField(1, Value1);