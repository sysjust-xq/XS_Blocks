{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季基金持有檔數趨勢向上
// 顯示名稱: 近[8]季基金持有檔數趨勢向上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 8,12,16
// 
input: _p1(8);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = UpTrend(GetField("股票基金持有檔數"), _p1); 
OutputField(1, GetField("股票基金持有檔數"));